using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Domain.Entities.PersonEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services
{
    public class PersonEmailService : GenericService<PersonsEmail>, IPersonEmailService
    {
        public PersonEmailService(NexusLASDbContext context, IUserIdentityService userIdentityService) : base(context, userIdentityService)
        {
            
        }
    }
}
