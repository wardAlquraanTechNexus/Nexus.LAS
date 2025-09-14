using Nexus.LAS.Domain.Entities.DocumentEntities;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Persistence.Repositories.BaseRepo;
using Nexus.LAS.Persistence.DatabaseContext;

namespace Nexus.LAS.Persistence.Repositories.DocumentRepositories;

public class DocumentTrackingRepo : GenericRepo<DocumentTracking>, IDocumentTrackingRepo
{
    public DocumentTrackingRepo(NexusLASDbContext context) : base(context)
    {
    }
}