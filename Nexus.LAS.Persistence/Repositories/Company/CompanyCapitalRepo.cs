using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories;

public class CompanyCapitalRepo : GenericRepo<CompanyCapital>
{
    public CompanyCapitalRepo(NexusLASDbContext context) : base(context)
    {
    }

    public async Task<List<CompanyCapital>> GetListByCompanyId(int companyId)
    {
        IQueryable<CompanyCapital> queryable = _dbSet.Where(x => x.CompanyId == companyId);
        return await queryable.ToListAsync();
    }
}
