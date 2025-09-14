using Nexus.LAS.Domain.Entities.PropertyEntities;
using Nexus.LAS.Persistence.Repositories.BaseRepo;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;

namespace Nexus.LAS.Persistence.Repositories.PropertyRepositories;

public class PropertyStatusRepo : GenericRepo<PropertyStatus>, IPropertyStatusRepo
{
    public PropertyStatusRepo(NexusLASDbContext context) : base(context)
    {
    }
}