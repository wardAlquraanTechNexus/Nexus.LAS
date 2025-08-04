using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Domain.Entities.PersonEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Persistence.Repositories
{
    public class PersonPhoneRepo : GenericRepo<PersonsPhone>
    {
        public PersonPhoneRepo(NexusLASDbContext context) : base(context)
        {
        }

        public override async Task DeleteAsync(int id)
        {
            var item = await _dbSet.FindAsync(id);
            if (item.PhonePrimary is true)
            {
                var firstItem = await _dbSet.FirstOrDefaultAsync(x => x.PersonsIdn == item.PersonsIdn);
                if (firstItem != null)
                {
                    firstItem.PhonePrimary = true;
                }

            }
            item.IsDeleted = true;

            await _context.SaveChangesAsync();
        }

        public async Task<List<PersonsPhone>> GetListByPersonId(int personId)
        {
            IQueryable<PersonsPhone> queryable = _dbSet.Where(x => x.PersonsIdn == personId);
            return await queryable.ToListAsync();
        }
    }
}
