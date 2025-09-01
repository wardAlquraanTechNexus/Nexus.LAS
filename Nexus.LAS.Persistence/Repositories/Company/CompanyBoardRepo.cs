using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Presistence;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;
using System.Threading;

namespace Nexus.LAS.Persistence.Repositories
{
    public class CompanyBoardRepo : GenericRepo<CompanyBoard> , ICompanyBoardRepo
    {
        public CompanyBoardRepo(NexusLASDbContext context) : base(context)
        {
        }



        public async Task<bool> ExistsActiveBoardAsync(int companyId ,  int? execludedId = 0)
        {
            return await _dbSet.AnyAsync(
                x => x.CompanyId == companyId && x.BoardActive && (!execludedId.HasValue || x.Id != execludedId)
            );
        }
    }
}
