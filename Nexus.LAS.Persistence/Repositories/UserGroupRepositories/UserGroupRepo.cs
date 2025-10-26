using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.Lookup.UserGroupUseCases.Queries.GetAllUsersByGroup;
using Nexus.LAS.Application.UseCases.UserGroupUseCases.Queries;
using Nexus.LAS.Domain.Entities.UserGroupEntities;
using Nexus.LAS.Domain.ExtensionMethods;
using Nexus.LAS.Identity.IdentityDbContext;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Persistence.Repositories
{
    public class UserGroupRepo : GenericRepo<UserGroup>, IUserGroupRepo
    {
        private readonly NexusLASIdentityDbContext _identityDbContext;
        public UserGroupRepo(NexusLASDbContext context , NexusLASIdentityDbContext identityDbContext) : base(context)
        {
            _identityDbContext = identityDbContext;
        }

        public async Task<PagingResult<UserGroupDTO>> GetUserGroupDTO(GetUsetGroupDTOQuery query)
        {

            var querable = (from u in _context.Users
                            join ug in _context.UserGroups on u.Id equals ug.UserId
                            join g in _context.Groups on ug.GroupId equals g.Id
                            where (!query.UserId.HasValue || query.UserId == u.Id) &&
                           (!query.GroupId.HasValue || query.GroupId == g.Id) &&
                           (string.IsNullOrEmpty(query.Username) || u.Username.ToLower().Contains(query.Username.ToLower())) &&
                           (string.IsNullOrEmpty(query.GroupName) || g.GroupName.ToLower().Contains(query.GroupName.ToLower()))
                            select new UserGroupDTO()
                            {
                                GroupName = g.GroupName,
                                GroupId = g.Id,
                                Username = u.Username,
                                UserId = u.Id,
                                Id = ug.Id,
                            }
                                       ).AsQueryable();

            if (!string.IsNullOrEmpty(query.OrderBy))
            {
                querable = querable.Order(query.OrderBy, query.OrderDir ?? "asc");
            }

            int totalRecords = await querable.CountAsync();

            querable = querable.Paginate(query.Page, query.PageSize);



            var data = await querable.ToListAsync();

            return new PagingResult<UserGroupDTO>(data, query.Page, query.PageSize, totalRecords);
        }
        public async Task<List<UserGroupDTO>> GerAllUserGroupDTO(GetAllGroupsByUserQuery query)
        {
            var querable = (from u in _context.Users
                            join ug in _context.UserGroups on u.Id equals ug.UserId
                            join g in _context.Groups on ug.GroupId equals g.Id
                            where (!query.UserId.HasValue || query.UserId == u.Id) &&
                           (!query.GroupId.HasValue || query.GroupId == g.Id) &&
                           (string.IsNullOrEmpty(query.Username) || u.Username.ToLower().Contains(query.Username.ToLower())) &&
                           (string.IsNullOrEmpty(query.GroupName) || g.GroupName.ToLower().Contains(query.GroupName.ToLower()))
                            select new UserGroupDTO()
                            {
                                GroupName = g.GroupName,
                                GroupId = g.Id,
                                Username = u.Username,
                                UserId = u.Id,
                                Id = ug.Id,
                            }
                                       ).AsQueryable();

            if (!string.IsNullOrEmpty(query.OrderBy))
            {
                querable = querable.Order(query.OrderBy, query.OrderDir ?? "asc");
            }

            var data = await querable.ToListAsync();

            return data;
        }
        public async Task<bool> ExistsByGroupIdAndUserIdAsync(int userId, int groupId, int? currentId = null)
        {
            return await _dbSet.AnyAsync(x => x.UserId == userId && x.GroupId == groupId && (!currentId.HasValue || x.Id != currentId));
        }
        public async Task<UserGroup?> GetByGroupIdAndUserIdAsync(int userId, int groupId)
        {
            return await _dbSet.FirstOrDefaultAsync(x => x.UserId == userId && x.GroupId == groupId);
        }

        public async Task<PagingResult<UserGroupDTO>> GetAllGroupsByUser(GetAllGroupsByUserQuery query)
        {
            var groupsQuery = _context.Groups
                .Select(x => new UserGroupDTO()
                {
                    GroupId = x.Id,
                    GroupName = x.GroupName,
                });

            if (!string.IsNullOrEmpty(query.OrderBy))
            {
                groupsQuery = groupsQuery.Order(query.OrderBy, query.OrderDir);
            }

            var count = await groupsQuery.CountAsync();

            groupsQuery = groupsQuery.Paginate(query.Page, query.PageSize)
                .AsNoTracking()
                .AsQueryable();


            List<UserGroupDTO> result = new List<UserGroupDTO>();

            var userGroupsQuery = _context.UserGroups
                .Where(ug =>
                (!query.UserId.HasValue || ug.UserId == query.UserId)
                && (!query.GroupId.HasValue || ug.GroupId == query.GroupId)
                )
                .Select(x => new {x.Id , x.GroupId , x.UserId })
                .AsQueryable()
                .AsNoTracking();


            var userGroups = await userGroupsQuery.ToListAsync();

            var groups = await groupsQuery.ToListAsync();

            foreach (var group in groups)
            {
                var userGroup = userGroups.FirstOrDefault(x => x.GroupId == group.GroupId);
                if(userGroup is not null)
                {
                    group.IsUserInGroup = true;
                    group.UserId = userGroup.UserId;
                    group.GroupId = userGroup.GroupId;
                    group.Id = userGroup.Id;
                }
                else
                {
                    group.IsUserInGroup = false;
                }
            }

            result = groups;


            return new PagingResult<UserGroupDTO>(result, query.Page, query.PageSize, count);

        }
        public async Task<PagingResult<UserGroupDTO>> GetAllUsersByGroup(GetAllUsersByGroupQuery query)
        {
            var usersQuery = _context.Users
                .Select(x => new UserGroupDTO()
                {
                    UserId = x.Id,
                    Username = x.Username,
                });


            

            if (!string.IsNullOrEmpty(query.OrderBy))
            {
                usersQuery = usersQuery.Order(query.OrderBy, query.OrderDir);
            }

            var count = await usersQuery.CountAsync();

            usersQuery = usersQuery.Paginate(query.Page, query.PageSize)
                .AsNoTracking()
                .AsQueryable();


            List<UserGroupDTO> result = new List<UserGroupDTO>();

            var userGroupsQuery = _context.UserGroups
                .Where(ug =>
                (!query.UserId.HasValue || ug.UserId == query.UserId)
                && (!query.GroupId.HasValue || ug.GroupId == query.GroupId)
                )
                .Select(x => new {x.Id , x.GroupId , x.UserId })
                .AsQueryable()
                .AsNoTracking();


            var userGroups = await userGroupsQuery.ToListAsync();

            var users = await usersQuery.ToListAsync();

            var usernames = users.Select(x => x.Username.ToLower()).ToList();
            var aspUsers = _identityDbContext.Users
                .Where(x => usernames.Contains(x.UserName.ToLower()))
                .Select(x => new { x.Id, x.UserName , x.FirstName , x.LastName})
                .AsNoTracking()
                .ToList();

            foreach (var user in users)
            {

                var aspUser = aspUsers.FirstOrDefault(x => x.UserName.ToLower() == user.Username.ToLower());
                if(aspUser is not null)
                {
                    user.Username = aspUser.UserName;
                    user.UserFullName = $"{aspUser.FirstName} {aspUser.LastName}";
                }


                var userGroup = userGroups.FirstOrDefault(x => x.UserId == user.UserId);
                if(userGroup is not null)
                {
                    user.IsUserInGroup = true;
                    user.UserId = userGroup.UserId;
                    user.GroupId = userGroup.GroupId;
                    user.Id = userGroup.Id;
                }
                else
                {
                    user.IsUserInGroup = false;
                }
            }

            result = users;


            return new PagingResult<UserGroupDTO>(result, query.Page, query.PageSize, count);

        }


    }
}
