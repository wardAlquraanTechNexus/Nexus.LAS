using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.GroupMenuDTOs;
using Nexus.LAS.Application.UseCases.Queries.SearchMenu;
using Nexus.LAS.Domain.Entities.Lookup;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services;

public class GroupMenuService : GenericService<GroupMenu>, IGroupMenuService
{
    public GroupMenuService(NexusLASDbContext context, IUserIdentityService userIdentityService) : base(context, userIdentityService)
    {
    }

    public async Task<PagingResult<SearchGroupMenuDTO>> SearchGroupMenus(SearchGroupMenuQuery query)
    {
        GroupMenuRepo repo = new(_context);
        return await repo.SearchGroupMenus(query);
    }


    public async Task<bool> IsGroupMenuExist(int groupId , int menuId , int? id = null)
    {
        GroupMenuRepo repo = new(_context);
        return await repo.IsGroupMenuExist(groupId , menuId , id);
    }
}
