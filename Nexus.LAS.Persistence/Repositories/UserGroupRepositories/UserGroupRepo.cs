using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.UserGroupUseCases.Queries;
using Nexus.LAS.Domain.Entities.UserGroupEntities;
using Nexus.LAS.Domain.ExtensionMethods;
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
        public UserGroupRepo(NexusLASDbContext context) : base(context)
        {
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
        public async Task<List<UserGroupDTO>> GerAllUserGroupDTO(GetAllUsetGroupDTOQuery query)
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


    }
}
