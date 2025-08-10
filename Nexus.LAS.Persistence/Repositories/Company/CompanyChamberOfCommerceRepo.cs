using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories;

public class CompanyChamberOfCommerceRepo : GenericRepo<CompaniesChamberOfCommerce>
{
    public CompanyChamberOfCommerceRepo(NexusLASDbContext context) : base(context)
    {
    }

    public async Task<List<CompaniesChamberOfCommerce>> GetListByCompanyId(int companyId)
    {
        IQueryable<CompaniesChamberOfCommerce> queryable = _dbSet.Where(x => x.CompaniesIdn == companyId);
        return await queryable.ToListAsync();
    }
}
