using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Options;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.Models;
using Nexus.LAS.Application.UseCases.Base;
using Nexus.LAS.Application.UseCases.Lookup.UserUseCases.Commands;
using Nexus.LAS.Application.UseCases.Lookup.UserUseCases.Queries.GetLdStuffPerson;
using Nexus.LAS.Application.UseCases.UserUseCases.Queries;
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
    public class UserRepo : GenericRepo<User>, IUserRepo
    {
        private readonly NexusLASIdentityDbContext _identityDbContext;
        private readonly IOptions<AppSettings> _appSettings;

        public UserRepo(
            NexusLASDbContext context, 
            NexusLASIdentityDbContext identityDbContext, 
            IOptions<AppSettings> appSettings
            ) : base(context)
        {
            _identityDbContext = identityDbContext;
            _appSettings = appSettings;
        }

        public async Task<User?> GetByUsernameAsync(string username)
        {
            return await _context.Users.FirstOrDefaultAsync(x => x.Username == username);
        }

        public async Task<bool> LinkUserWithPerson(LinkUserPersonCommand command)
        {
            var user = await _dbSet.FirstOrDefaultAsync(u => u.Username == command.Username);
            if (user == null)
            {
                return false; // User not found
            }
            user.PersonsIdN = command.PersonId;
            await _context.SaveChangesAsync();
            return true;
        }
        public async Task<PagingResult<UserDto>> SearchUser(SearchUserQuery query)
        {

            // Step 1: Get users from Identity first
            var idUsers = await _identityDbContext.Users
                .Where(u => 
                (string.IsNullOrEmpty(query.Username) || u.UserName.ToLower().Contains(query.Username.ToLower())) &&
                (string.IsNullOrEmpty(query.Email) || u.Email.ToLower().Contains(query.Email.ToLower())) &&

                (string.IsNullOrEmpty(query.FirstName) || u.FirstName.ToLower().Contains(query.FirstName.ToLower())) &&
                (string.IsNullOrEmpty(query.LastName
                ) || u.LastName.ToLower().Contains(query.LastName.ToLower()))
                
                )
                .ToListAsync();


            // Step 2: Extract usernames
            var usernames = idUsers.Select(u => u.UserName).ToList();

            // Step 3: Get system users that match the usernames
            var sysUsers = await _context.Users
                .Where(u => 
                usernames.Contains(u.Username) &&
                (!query.PersonId.HasValue || query.PersonId == u.PersonsIdN)
                )
                .ToListAsync();

            int totalRecords = sysUsers.Count;


            // Step 4: Join in memory
            var querable = (from idUser in idUsers
                            join sysUser in sysUsers
                                on idUser.UserName equals sysUser.Username
                            select new UserDto
                            {
                                Id = sysUser.Id.ToString(),
                                Email = idUser.Email,
                                FirstName = idUser.FirstName,
                                LastName = idUser.LastName,
                                PhoneNumber = idUser.PhoneNumber,
                                Username = idUser.UserName,
                                NTLogin = sysUser.NTLogin,
                                PersonsIdN = sysUser.PersonsIdN,
                            }).AsQueryable();

            // Step 5: Paginate in memory
            querable = querable.Paginate(query.Page, query.PageSize);

            var data = querable.ToList();

            return new PagingResult<UserDto>(data, query.Page, query.PageSize, totalRecords);

        }

        public async Task<bool> ExistsByPersonIdAsync(int personId, string? excludeUsername = null)
        {
            return await _dbSet.AnyAsync(u =>
                u.PersonsIdN == personId &&
                (excludeUsername == null || u.Username != excludeUsername)
            );
        }

        public async Task<PagingResult<UserDto>> GetLdStuffPersons(GetLdStuffPersonQuery param)
        {
            var ldStuffUsersQuery = _context.UserGroups.Where(x => x.GroupId == _appSettings.Value.LdStaffId).Select(x=>x.UserId).AsQueryable();
            var userIds = await ldStuffUsersQuery.ToListAsync();

            var query = _context.Users
                .Where(
                u => userIds.Contains(u.Id)
                && u.PersonsIdN != null
                && (string.IsNullOrEmpty(param.EnglishName) || u.Person.PersonEnglishName.ToLower().Contains(param.EnglishName.ToLower()))
                )
                .OrderBy(x=>x.Person.PersonEnglishName)
                .Select(u => new UserDto
                {
                    Id = u.Id.ToString(),
                    Username = u.Username,
                    PersonsIdN = u.PersonsIdN,
                    PersonName = u.Person != null ? (u.Person.PersonEnglishName) : null,
                    NTLogin = u.NTLogin
                })
                .AsQueryable()
                .AsNoTracking()
                ;


            var totalRecords = await query.CountAsync();

            query = query.Paginate(param.Page, param.PageSize);

            var data =  await query.ToListAsync();

            var usernames = data.Select(d => d.Username.ToLower()).ToList();
            var identityUsersQuery=  _identityDbContext.Users
                .Where(x=> usernames.Contains(x.UserName.ToLower()))
                .AsQueryable()
                .AsNoTracking();

            var identityUsers = await identityUsersQuery.ToListAsync();

            foreach (var userDto in data)
            {
                var idUser = identityUsers.FirstOrDefault(x => x.UserName.Equals(userDto.Username, StringComparison.OrdinalIgnoreCase));
                if (idUser != null)
                {
                    userDto.Email = idUser.Email;
                    userDto.FirstName = idUser.FirstName;
                    userDto.LastName = idUser.LastName;
                    userDto.PhoneNumber = idUser.PhoneNumber;

                }
            }

            return new PagingResult<UserDto>(data, param.Page, param.PageSize, totalRecords);


        }

    }
}
