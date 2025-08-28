using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts._Repositories._CompanyRepos;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories;

public class CompanyContractRepo : GenericRepo<CompaniesContract>, ICompanyContractRepo
{
    public CompanyContractRepo(NexusLASDbContext context) : base(context)
    {
    }

    public async Task<List<CompaniesContract>> GetListByCompanyId(int companyId)
    {
        IQueryable<CompaniesContract> queryable = _dbSet.Where(x => x.CompaniesIdn == companyId);
        return await queryable.ToListAsync();
    }
}
