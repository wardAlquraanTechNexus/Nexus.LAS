using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Domain.Entities.PersonEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Services.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Persistence.Services
{
    public class PersonIdDetailService : GenericService<PersonsIDDetail>, IPersonIdDetailService
    {
        public PersonIdDetailService(NexusLASDbContext context, IUserIdentityService userIdentityService) : base(context, userIdentityService)
        {
        }
    }
}
