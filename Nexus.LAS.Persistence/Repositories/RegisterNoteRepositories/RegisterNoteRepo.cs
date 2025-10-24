using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
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
    public class RegisterNoteRepo : GenericRepo<RegistersNote>, IRegisterNoteRepo
    {
        public RegisterNoteRepo(NexusLASDbContext context) : base(context)
        {
        }


        public async Task<List<RegistersNote>> GetNotesByRegisterIdcAndId(string registerIdc, int registerId)
        {
            var notes = _dbSet
                .Where(rn => rn.RegistersIdc == registerIdc && rn.Id == registerId)
                .OrderByDescending(rn => rn.CreatedAt)
                .AsQueryable()
                .AsNoTracking();

            return await notes.ToListAsync();
        }
    }
}
