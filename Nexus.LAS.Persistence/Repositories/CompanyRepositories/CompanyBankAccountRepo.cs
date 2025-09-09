using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._CompanyRepos;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories;

public class CompanyBankAccountRepo : GenericRepo<CompanyBankAccount>, ICompanyBankAccountRepo
{
    public CompanyBankAccountRepo(NexusLASDbContext context) : base(context)
    {
    }

    public async Task<List<CompanyBankAccount>> GetListByCompanyId(int companyId)
    {
        IQueryable<CompanyBankAccount> queryable = _dbSet.Where(x => x.CompanyId == companyId);
        return await queryable.ToListAsync();
    }
}
