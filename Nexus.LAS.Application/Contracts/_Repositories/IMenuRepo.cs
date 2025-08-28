using Nexus.LAS.Application.Contracts.Presistence.Repositories.Base;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.MenuUseCases.Queries;
using Nexus.LAS.Domain.Entities.Lookup;
using Nexus.LAS.Domain.ViewModels.Menus;

namespace Nexus.LAS.Application.Contracts._Repositories
{
    public interface IMenuRepo : IGenericRepo<Menu>
    {
        Task<List<MenuGroupAuthorizeVM>> GetAllByUsername(string username);
        Task<List<MenuGroupAuthorizeVM>> GetAllByPathname(string path);
        Task<List<Menu>> GetParents(int id);
        Task<PagingResult<MenuDto>> GetListAsync(GetMenuDtoQuery param);
        Task<PagingResult<MenuDto>> SearchMenu(GetMenuDtoQuery param);
    }
}