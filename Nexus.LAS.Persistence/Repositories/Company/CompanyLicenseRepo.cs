using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories;

public class CompanyLicenseRepo : GenericRepo<CompaniesLicense>
{
    public CompanyLicenseRepo(NexusLASDbContext context) : base(context)
    {
    }

    public async Task<List<CompaniesLicense>> GetListByCompanyId(int companyId)
    {
        IQueryable<CompaniesLicense> queryable = _dbSet.Where(x => x.CompaniesIdn == companyId);
        return await queryable.ToListAsync();
    }
}
