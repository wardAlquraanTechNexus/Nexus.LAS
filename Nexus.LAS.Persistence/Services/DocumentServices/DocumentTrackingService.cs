using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Domain.Entities.DocumentEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services.DocumentServices;

public class DocumentTrackingService : GenericService<DocumentTracking>, IDocumentTrackingService
{
    public DocumentTrackingService(NexusLASDbContext context, IUserIdentityService userIdentityService, IDocumentTrackingRepo repo)
        : base(context, userIdentityService, repo)
    {
    }
}