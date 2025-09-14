using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Domain.Entities.PropertyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services.PropertyServices;

public class PropertyOwnerService : GenericService<PropertyOwner>, IPropertyOwnerService
{
    public PropertyOwnerService(NexusLASDbContext context, IUserIdentityService userIdentityService, IPropertyOwnerRepo repo)
        : base(context, userIdentityService, repo)
    {
    }
}