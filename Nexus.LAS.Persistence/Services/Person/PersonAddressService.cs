using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.Contracts._Repositories;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Domain.Entities.PersonEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services
{
    public class PersonAddressService : GenericService<PersonsAddress>, IPersonAddressService
    {
        public PersonAddressService(NexusLASDbContext context, IUserIdentityService userIdentityService,IPersonAddressRepo repo) : base(context, userIdentityService,repo)
        {
        }
      
    }
}
