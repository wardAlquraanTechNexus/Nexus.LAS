using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories;

public class CompanyPhoneRepo : GenericRepo<CompaniesPhone>
{
    public CompanyPhoneRepo(NexusLASDbContext context) : base(context)
    {
    }

    public override async Task DeleteAsync(int id)
    {
        var item = await _dbSet.FindAsync(id);
        if (item.PhonePrimary is true)
        {
            var firstItem = await _dbSet.FirstOrDefaultAsync(x => x.CompaniesIdn == item.CompaniesIdn);
            if (firstItem != null)
            {
                firstItem.PhonePrimary = true;
            }

        }
        item.IsDeleted = true;

        await _context.SaveChangesAsync();
    }

    public async Task<List<CompaniesPhone>> GetListByCompanyId(int companyId)
    {
        IQueryable<CompaniesPhone> queryable = _dbSet.Where(x => x.CompaniesIdn == companyId);
        return await queryable.ToListAsync();
    }
}
