using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.GroupMenuDTOs;
using Nexus.LAS.Application.UseCases.Commands;
using Nexus.LAS.Application.UseCases.Lookup.Queries.GetAllMenusByGroup;
using Nexus.LAS.Application.UseCases.Queries;
using Nexus.LAS.Application.UseCases.Queries.SearchMenu;
using Nexus.LAS.Domain.Entities.Lookup;


namespace Nexus.LAS.Application.Contracts.Presistence.Services
{
    public interface IGroupMenuService:IGenericService<GroupMenu>
    {
        Task<PagingResult<GroupMenuDTO>> SearchGroupMenus(SearchGroupMenuQuery query);
        Task<bool> IsGroupMenuExist(int groupId, int menuId, int? id = null);
        Task<List<GroupMenuDTO>> GetAllGroupMenus(GetAllGroupMenuQuery query);
        Task<bool> UpsertCollectionOfMenus(UpsertCollectionOfGroupsMenusCommand command);
        Task<PagingResult<GroupMenuDTO>> GetAllMenusByGroup(GetAllMenusByGroupQuery query);
    }
}
