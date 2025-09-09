using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._CompanyRepos;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories;

public class CompanyAddressRepo : GenericRepo<CompanyAddress>, ICompanyAddressRepo
{
    public CompanyAddressRepo(NexusLASDbContext context) : base(context)
    {
    }

    public override async Task DeleteAsync(int id)
    {
        var item = await _dbSet.FindAsync(id);
        if (item.AddressPrimary is true)
        {
            var firstItem = await _dbSet.FirstOrDefaultAsync(x => x.CompanyId == item.CompanyId);
            if (firstItem != null)
            {
                firstItem.AddressPrimary = true;
            }

        }
        item.IsDeleted = true;

        await _context.SaveChangesAsync();
    }

    public async Task<List<CompanyAddress>> GetListByCompanyId(int companyId)
    {
        IQueryable<CompanyAddress> queryable = _dbSet.Where(x => x.CompanyId == companyId);
        return await queryable.ToListAsync();
    }
}
