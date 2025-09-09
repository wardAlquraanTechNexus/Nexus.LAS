using Microsoft.AspNetCore.Http;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._PersonRepos;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Domain.Entities.PersonEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services
{
    public class PersonEmailService : GenericService<PersonsEmail>, IPersonEmailService
    {
        public PersonEmailService(NexusLASDbContext context, IUserIdentityService userIdentityService,IPersonEmailRepo repo) : base(context, userIdentityService,repo)
        {

        }

     
    }
}
