using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories;

public class CompanyBankAccountRepo : GenericRepo<CompaniesBankAccount>
{
    public CompanyBankAccountRepo(NexusLASDbContext context) : base(context)
    {
    }

    public async Task<List<CompaniesBankAccount>> GetListByCompanyId(int companyId)
    {
        IQueryable<CompaniesBankAccount> queryable = _dbSet.Where(x => x.CompaniesIdn == companyId);
        return await queryable.ToListAsync();
    }
}
