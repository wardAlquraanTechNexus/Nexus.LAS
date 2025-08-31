using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._CompanyRepos;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories;

public class CompanyOtherContractRepo : GenericRepo<CompaniesOtherContract>, ICompanyOtherContractRepo
{
    public CompanyOtherContractRepo(NexusLASDbContext context) : base(context)
    {
    }

    public async Task<List<CompaniesOtherContract>> GetListByCompanyId(int companyId)
    {
        IQueryable<CompaniesOtherContract> queryable = _dbSet.Where(x => x.CompaniesIdn == companyId);
        return await queryable.ToListAsync();
    }
}
