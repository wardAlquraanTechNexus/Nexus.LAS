using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts._Repositories._CompanyRepos;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories;

public class CompanyActivityRepo : GenericRepo<CompanyActivity> , ICompanyActivityRepo
{
    public CompanyActivityRepo(NexusLASDbContext context) : base(context)
    {
    }

    public async Task<List<CompanyActivity>> GetListByCompanyId(int companyId)
    {
        IQueryable<CompanyActivity> queryable = _dbSet.Where(x => x.CompanyId == companyId);
        return await queryable.ToListAsync();
    }
}
