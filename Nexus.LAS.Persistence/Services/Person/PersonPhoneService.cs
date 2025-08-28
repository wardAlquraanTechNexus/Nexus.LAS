using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.Contracts._Repositories;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Domain.Entities.PersonEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services
{
    public class PersonPhoneService : GenericService<PersonsPhone>, IPersonPhoneService
    {
        public PersonPhoneService(NexusLASDbContext context, IUserIdentityService userIdentityService, IPersonPhoneRepo repo) : base(context, userIdentityService, repo)
        {
        }

        public override async Task DeleteAsync(int id)
        {
            var repo = new PersonPhoneRepo(_context);
            await repo.DeleteAsync(id);
        }
    }
}
