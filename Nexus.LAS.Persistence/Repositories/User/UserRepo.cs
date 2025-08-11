using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.UserUseCases.Queries;
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
    public class UserRepo : GenericRepo<User>
    {
        public UserRepo(NexusLASDbContext context) : base(context)
        {
        }

        public async Task<User?> GetByUsernameAsync(string username)
        {
            return await _context.Users.FirstOrDefaultAsync(x => x.Username == username);
        }

        public async Task<PagingResult<User>> SearchUser(SearchUserQuery query)
        {
            var querable = _dbSet.Where(x=>
            (string.IsNullOrEmpty(query.Username) || x.Username.ToLower().Contains(query.Username.ToLower()))
            );

            int totalRecords = await querable.CountAsync();

            querable = querable.Paginate(query.Page, query.PageSize);

            var data = await querable.ToListAsync();

            return new PagingResult<User>(data, query.Page, query.PageSize, totalRecords);
        }
    }
}
