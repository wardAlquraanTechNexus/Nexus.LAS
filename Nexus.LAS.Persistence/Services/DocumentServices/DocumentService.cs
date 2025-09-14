using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Domain.Entities.DocumentEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services.DocumentServices;

public class DocumentService : GenericService<Document>, IDocumentService
{
    public DocumentService(NexusLASDbContext context, IUserIdentityService userIdentityService, IDocumentRepo repo)
        : base(context, userIdentityService, repo)
    {
    }
}