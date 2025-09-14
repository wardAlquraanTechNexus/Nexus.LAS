using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Domain.Entities.NumberEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services.NumberServices;

public class NumberService : GenericService<Number>, INumberService
{
    public NumberService(NexusLASDbContext context, IUserIdentityService userIdentityService, INumberRepo repo)
        : base(context, userIdentityService, repo)
    {
    }
}