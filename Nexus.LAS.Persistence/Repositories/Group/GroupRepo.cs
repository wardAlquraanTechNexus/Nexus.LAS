using Nexus.LAS.Domain.Entities.Lookup;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories;

public class GroupRepo : GenericRepo<Group>
{
    public GroupRepo(NexusLASDbContext context) : base(context)
    {
    }
}
