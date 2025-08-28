using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts._Repositories._CompanyRepos;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories;

public class CompanyChamberOfCommerceRepo : GenericRepo<CompanyChamberOfCommerce> , ICompanyChamberOfCommerceRepo
{
    public CompanyChamberOfCommerceRepo(NexusLASDbContext context) : base(context)
    {
    }

    public async Task<List<CompanyChamberOfCommerce>> GetListByCompanyId(int companyId)
    {
        IQueryable<CompanyChamberOfCommerce> queryable = _dbSet.Where(x => x.CompanyIdn == companyId);
        return await queryable.ToListAsync();
    }
}
