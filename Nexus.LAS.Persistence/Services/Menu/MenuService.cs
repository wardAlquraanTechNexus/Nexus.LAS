using Nexus.LAS.Application.Contracts._Repositories;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.MenuUseCases.Queries;
using Nexus.LAS.Domain.Entities.Lookup;
using Nexus.LAS.Domain.ViewModels.Menus;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services
{
    public class MenuService : GenericService<Menu>, IMenuService
    {
        private readonly IMenuRepo _repo;
        public MenuService(NexusLASDbContext context, IUserIdentityService userIdentityService, IMenuRepo repo) : base(context,userIdentityService,repo)
        {
            _repo = repo;
        }

        public async Task<List<MenuGroupAuthorizeVM>> GetAllMenus()
        {
            return await _repo.GetAllByUsername(_userIdentityService.Username);
        }
        public async Task<List<MenuGroupAuthorizeVM>> GetAllMenusByPath(string path)
        {
            return await _repo.GetAllByPathname(path);
        }

        public async Task<List<Menu>> GetParents(int id)
        {
            return await _repo.GetParents(id);
        }

        public async Task<PagingResult<MenuDto>> GetListAsync(GetMenuDtoQuery param)
        {
            return await _repo.GetListAsync(param);
        }
        public async Task<PagingResult<MenuDto>> SearchMenu(GetMenuDtoQuery param)
        {
            return await _repo.SearchMenu(param);
        }

    }
}
