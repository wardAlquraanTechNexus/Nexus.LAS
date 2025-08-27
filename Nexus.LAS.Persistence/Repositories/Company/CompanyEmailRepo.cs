using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories;

public class CompanyEmailRepo : GenericRepo<CompanyEmail>
{
    public CompanyEmailRepo(NexusLASDbContext context) : base(context)
    {
    }

    public override async Task DeleteAsync(int id)
    {
        var item = await _dbSet.FindAsync(id);
        if (item.EmailPrimary is true)
        {
            var firstItem = await _dbSet.FirstOrDefaultAsync(x => x.CompanyId == item.CompanyId);
            if (firstItem != null)
            {
                firstItem.EmailPrimary = true;
            }

        }
        item.IsDeleted = true;

        await _context.SaveChangesAsync();
    }

    public async Task<List<CompanyEmail>> GetListByCompanyId(int companyId)
    {
        IQueryable<CompanyEmail> queryable = _dbSet.Where(x => x.CompanyId == companyId);
        return await queryable.ToListAsync();
    }
}
