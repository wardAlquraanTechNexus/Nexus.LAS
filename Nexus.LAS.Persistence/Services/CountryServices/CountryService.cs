using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Domain.Entities.Lookup;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services
{
    public class CountryService : GenericService<Country>, ICountryService
    {
        public CountryService(NexusLASDbContext context, IUserIdentityService userIdentityService, ICountryRepo repo) : base(context, userIdentityService, repo)
        {
        }
    }
}
