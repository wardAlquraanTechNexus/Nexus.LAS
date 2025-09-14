using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Domain.Entities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services.FPCServices;

public class FPCODActionService : GenericService<FPCODAction>, IFPCODActionService
{
    public FPCODActionService(NexusLASDbContext context, IUserIdentityService userIdentityService, IFPCODActionRepo repo)
        : base(context, userIdentityService, repo)
    {
    }
}