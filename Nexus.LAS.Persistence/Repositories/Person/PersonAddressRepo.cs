using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Domain.Entities.PersonEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories
{
    public class PersonAddressRepo : GenericRepo<PersonsAddress>
    {
        public PersonAddressRepo(NexusLASDbContext context) : base(context)
        {
        }

        public override async Task DeleteAsync(int id)
        {
            var item = await _dbSet.FindAsync(id);
            if (item.AddressPrimary is true)
            {
                var firstItem = await _dbSet.FirstOrDefaultAsync(x => x.PersonsIdn == item.PersonsIdn);
                if (firstItem != null)
                {
                    firstItem.AddressPrimary = true;
                }

            }
            item.IsDeleted = true;

            await _context.SaveChangesAsync();
        }
    }
}
