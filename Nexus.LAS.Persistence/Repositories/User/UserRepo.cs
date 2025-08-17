using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
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
    public class UserRepo : GenericRepo<User>
    {
        private readonly NexusLASIdentityDbContext _identityDbContext;
        public UserRepo(NexusLASDbContext context, NexusLASIdentityDbContext identityDbContext) : base(context)
        {
            _identityDbContext = identityDbContext;
        }

        public async Task<User?> GetByUsernameAsync(string username)
        {
            return await _context.Users.FirstOrDefaultAsync(x => x.Username == username);
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
                                LoginName = sysUser.LoginName,
                                NTLogin = sysUser.NTLogin,
                                PersonsIdN = sysUser.PersonsIdN,
                            }).AsQueryable();

            // Step 5: Paginate in memory
            querable = querable.Paginate(query.Page, query.PageSize);

            var data = querable.ToList();

            return new PagingResult<UserDto>(data, query.Page, query.PageSize, totalRecords);

        }
    }
}
