using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Domain.Entities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services.FPCServices;

public class FPCODService : GenericService<FPCOD>, IFPCODService
{
    public FPCODService(NexusLASDbContext context, IUserIdentityService userIdentityService, IFPCsODRepo repo)
        : base(context, userIdentityService, repo)
    {
    }
}