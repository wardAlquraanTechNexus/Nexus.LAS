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
    public class PersonIdDetailRepo : GenericRepo<PersonsIDDetail>
    {
        public PersonIdDetailRepo(NexusLASDbContext context) : base(context)
        {
        }
    }
}
