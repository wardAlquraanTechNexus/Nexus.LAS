using Nexus.LAS.Application.Contracts.Presistence._Repositories.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.GroupMenuDTOs;
using Nexus.LAS.Application.UseCases.Queries;
using Nexus.LAS.Application.UseCases.Queries.SearchMenu;
using Nexus.LAS.Domain.Entities.Lookup;

namespace Nexus.LAS.Application.Contracts.Presistence._Repositories
{
    public interface IGroupMenuRepo : IGenericRepo<GroupMenu>
    {
        Task<PagingResult<SearchGroupMenuDTO>> SearchGroupMenus(SearchGroupMenuQuery query);
        Task<List<SearchGroupMenuDTO>> GetAllGroupMenu(GetAllGroupMenuQuery query);
        Task<bool> IsGroupMenuExist(int groupId, int menuId, int? id = null);
        Task<GroupMenu?> GetByGroupIdAndMenuIdAsync(int groupId, int menuId);
    }
}