using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.GroupMenuDTOs;
using Nexus.LAS.Application.UseCases.Queries.SearchMenu;
using Nexus.LAS.Domain.Entities.Lookup;


namespace Nexus.LAS.Application.Contracts.Presistence.Services
{
    public interface IGroupMenuService:IGenericService<GroupMenu>
    {
        Task<PagingResult<SearchGroupMenuDTO>> SearchGroupMenus(SearchGroupMenuQuery query);
        Task<bool> IsGroupMenuExist(int groupId, int menuId, int? id = null);
    }
}
