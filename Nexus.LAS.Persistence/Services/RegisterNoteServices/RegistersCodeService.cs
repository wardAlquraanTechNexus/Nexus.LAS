using Nexus.LAS.Application.Contracts.Presistence.Services.RegisterNote;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Domain.Entities.RegisterEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services.RegisterNoteServices;

public class RegistersCodeService : GenericService<RegistersCode>, IRegistersCodeService
{
    public RegistersCodeService(NexusLASDbContext context, IUserIdentityService userIdentityService, IRegistersCodeRepo repo)
        : base(context, userIdentityService, repo)
    {
    }
}