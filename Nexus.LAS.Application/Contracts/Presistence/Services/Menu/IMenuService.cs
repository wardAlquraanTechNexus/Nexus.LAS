using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.MenuUseCases.Queries;
using Nexus.LAS.Domain.Entities.Lookup;
using Nexus.LAS.Domain.ViewModels.Menus;

namespace Nexus.LAS.Application.Contracts.Presistence.Services;

public interface IMenuService:IGenericService<Menu>
{
    Task<List<MenuGroupAuthorizeVM>> GetAllMenus();
    Task<List<MenuGroupAuthorizeVM>> GetAllMenusByPath(string path);
    Task<List<Menu>> GetParents(int id);
    Task<PagingResult<Menu>> GetListAsync(GetMenuDtoQuery param);
    Task<PagingResult<Menu>> SearchMenu(GetMenuDtoQuery param);
}
