using Nexus.LAS.Application.Contracts.Presistence._Repositories.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.GroupMenuDTOs;
using Nexus.LAS.Application.UseCases.Lookup.Queries.GetAllMenusByGroup;
using Nexus.LAS.Application.UseCases.Queries;
using Nexus.LAS.Application.UseCases.Queries.SearchMenu;
using Nexus.LAS.Domain.Entities.Lookup;

namespace Nexus.LAS.Application.Contracts.Presistence._Repositories
{
    public interface IGroupMenuRepo : IGenericRepo<GroupMenu>
    {
        Task<PagingResult<GroupMenuDTO>> SearchGroupMenus(SearchGroupMenuQuery query);
        Task<List<GroupMenuDTO>> GetAllGroupMenu(GetAllGroupMenuQuery query);
        Task<bool> IsGroupMenuExist(int groupId, int menuId, int? id = null);
        Task<GroupMenu?> GetByGroupIdAndMenuIdAsync(int groupId, int menuId);
        Task<PagingResult<GroupMenuDTO>> GetAllMenusByGroup(GetAllMenusByGroupQuery query);
    }
}