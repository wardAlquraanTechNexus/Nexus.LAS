using Microsoft.AspNetCore.Http;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Domain.Entities.PersonEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services
{
    public class PersonEmailService : GenericService<PersonsEmail>, IPersonEmailService
    {
        public PersonEmailService(NexusLASDbContext context, IUserIdentityService userIdentityService) : base(context, userIdentityService)
        {

        }

        
        public override async Task DeleteAsync(int id)
        {
            var repo = new PersonEmailRepo(_context);
            await repo.DeleteAsync(id);
        }
    }
}
