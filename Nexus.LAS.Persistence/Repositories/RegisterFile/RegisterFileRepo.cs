using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Domain.Entities.RegisterEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Persistence.Repositories
{
    public class RegisterFileRepo : GenericRepo<RegisterFile>
    {
        public RegisterFileRepo(NexusLASDbContext context) : base(context)
        {
        }

        public async Task<List<RegisterFile>> GetByIds(string idc, int idn)
        {
            return await _dbSet.Where(x=>x.RegistersIdc == idc && x.RegistersIdn == idn).ToListAsync();
        }
    }
}
