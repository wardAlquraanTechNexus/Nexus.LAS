using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories;

public class CompanyShareHolderRepo : GenericRepo<CompanyShareHolder>
{
    public CompanyShareHolderRepo(NexusLASDbContext context) : base(context)
    {
    }

    public async Task<List<CompanyShareHolder>> GetListByCompanyId(int companyId)
    {
        IQueryable<CompanyShareHolder> queryable = _dbSet.Where(x => x.CompanyId == companyId);
        return await queryable.ToListAsync();
    }
}
