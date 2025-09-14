using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Domain.Entities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services.FPCServices;

public class FPCService : GenericService<FPC>, IFPCService
{
    public FPCService(NexusLASDbContext context, IUserIdentityService userIdentityService, IFPCRepo repo)
        : base(context, userIdentityService, repo)
    {
    }
}