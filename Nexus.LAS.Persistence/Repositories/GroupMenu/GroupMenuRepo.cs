using Nexus.LAS.Domain.Entities.Lookup;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories;

public class GroupMenuRepo : GenericRepo<GroupMenu>
{
    public GroupMenuRepo(NexusLASDbContext context) : base(context)
    {
    }
}
