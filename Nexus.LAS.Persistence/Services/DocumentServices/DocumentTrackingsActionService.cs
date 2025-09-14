using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Domain.Entities.DocumentEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services.DocumentServices;

public class DocumentTrackingsActionService : GenericService<DocumentTrackingAction>, IDocumentTrackingsActionService
{
    public DocumentTrackingsActionService(NexusLASDbContext context, IUserIdentityService userIdentityService, IDocumentTrackingsActionRepo repo)
        : base(context, userIdentityService, repo)
    {
    }
}