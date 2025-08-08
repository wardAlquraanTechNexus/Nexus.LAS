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
    public class RegisterNoteRepo : GenericRepo<RegistersNote>
    {
        public RegisterNoteRepo(NexusLASDbContext context) : base(context)
        {
        }
    }
}
