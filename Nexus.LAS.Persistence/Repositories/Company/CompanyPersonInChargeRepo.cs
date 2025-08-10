using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories;

public class CompanyPersonInChargeRepo : GenericRepo<CompaniesPersonInCharge>
{
    public CompanyPersonInChargeRepo(NexusLASDbContext context) : base(context)
    {
    }

    public async Task<List<CompaniesPersonInCharge>> GetListByCompanyId(int companyId)
    {
        IQueryable<CompaniesPersonInCharge> queryable = _dbSet.Where(x => x.CompaniesIdn == companyId);
        return await queryable.ToListAsync();
    }
}
