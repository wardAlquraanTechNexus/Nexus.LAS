using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Domain.Entities.Lookup;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services;

public class GroupMenuService : GenericService<GroupMenu>, IGroupMenuService
{
    public GroupMenuService(NexusLASDbContext context, IUserIdentityService userIdentityService) : base(context, userIdentityService)
    {
    }
}
