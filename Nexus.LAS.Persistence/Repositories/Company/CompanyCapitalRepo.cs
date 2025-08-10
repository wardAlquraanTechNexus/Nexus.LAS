using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories;

public class CompanyCapitalRepo : GenericRepo<CompaniesCapital>
{
    public CompanyCapitalRepo(NexusLASDbContext context) : base(context)
    {
    }

    public async Task<List<CompaniesCapital>> GetListByCompanyId(int companyId)
    {
        IQueryable<CompaniesCapital> queryable = _dbSet.Where(x => x.CompaniesIdn == companyId);
        return await queryable.ToListAsync();
    }
}
