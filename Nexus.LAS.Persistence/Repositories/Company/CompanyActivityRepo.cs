using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories;

public class CompanyActivityRepo : GenericRepo<CompaniesActivity>
{
    public CompanyActivityRepo(NexusLASDbContext context) : base(context)
    {
    }

    public async Task<List<CompaniesActivity>> GetListByCompanyId(int companyId)
    {
        IQueryable<CompaniesActivity> queryable = _dbSet.Where(x => x.CompaniesIdn == companyId);
        return await queryable.ToListAsync();
    }
}
