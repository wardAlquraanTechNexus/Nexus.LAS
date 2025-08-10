using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories;

public class CompanyShareHolderRepo : GenericRepo<CompaniesShareHolder>
{
    public CompanyShareHolderRepo(NexusLASDbContext context) : base(context)
    {
    }

    public async Task<List<CompaniesShareHolder>> GetListByCompanyId(int companyId)
    {
        IQueryable<CompaniesShareHolder> queryable = _dbSet.Where(x => x.CompaniesIdn == companyId);
        return await queryable.ToListAsync();
    }
}
