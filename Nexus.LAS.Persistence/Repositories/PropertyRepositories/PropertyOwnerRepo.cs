using Nexus.LAS.Domain.Entities.PropertyEntities;
using Nexus.LAS.Persistence.Repositories.BaseRepo;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;

namespace Nexus.LAS.Persistence.Repositories.PropertyRepositories;

public class PropertyOwnerRepo : GenericRepo<PropertyOwner>, IPropertyOwnerRepo
{
    public PropertyOwnerRepo(NexusLASDbContext context) : base(context)
    {
    }
}