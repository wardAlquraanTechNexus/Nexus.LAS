using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts._Repositories._CompanyRepos;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories;

public class CompanyCapitalRepo : GenericRepo<CompanyCapital>, ICompanyCapitalRepo
{
    public CompanyCapitalRepo(NexusLASDbContext context) : base(context)
    {
    }

    public async Task<List<CompanyCapital>> GetListByCompanyId(int companyId)
    {
        IQueryable<CompanyCapital> queryable = _dbSet.Where(x => x.CompanyId == companyId);
        return await queryable.ToListAsync();
    }


    public async Task ValidateSingleActiveCapital(CompanyCapital capital)
    {
        if (!capital.CapitalActive)
            return;

        bool exists = await _dbSet
            .AnyAsync(c =>
                c.CompanyId == capital.CompanyId &&
                c.CapitalActive &&
                c != capital);

        if (exists)
            throw new InvalidOperationException("Only one active capital record is allowed per company.");
    }


    public async Task<bool> HasActiveCapitalAsync(int companyId)
    {
        return await _dbSet.AnyAsync(c => c.CompanyId == companyId && c.CapitalActive);
    }

    public async Task<CompanyCapital?> GetActiveCapitalByCompanyIdAsync(int companyId)
    {
        var capital = await _dbSet
            .Where(c => c.CompanyId == companyId && c.CapitalActive)
            .FirstOrDefaultAsync();
        return capital;
    }
}
