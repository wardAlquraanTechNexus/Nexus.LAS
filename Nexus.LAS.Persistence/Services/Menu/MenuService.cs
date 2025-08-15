using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence.Services;
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
        public MenuService(NexusLASDbContext context, IUserIdentityService userIdentityService) : base(context,userIdentityService)
        {
        }

        public async Task<List<MenuGroupAuthorizeVM>> GetAllMenus()
        {
            MenuRepo menuRepo = new MenuRepo(_context);
            return await menuRepo.GetAllByUsername(_userIdentityService.Username);
        }
        public async Task<List<MenuGroupAuthorizeVM>> GetAllMenusByPath(string path)
        {
            MenuRepo menuRepo = new MenuRepo(_context);
            return await menuRepo.GetAllByPathname(path);
        }

        public async Task<List<Menu>> GetParents(int id)
        {
            MenuRepo menuRepo = new MenuRepo(_context);
            return await menuRepo.GetParents(id);
        }

        public async Task<PagingResult<Menu>> GetListAsync(GetMenuDtoQuery param)
        {
            MenuRepo repo = new(_context);
            return await repo.GetListAsync(param);
        }
        public async Task<PagingResult<Menu>> SearchMenu(GetMenuDtoQuery param)
        {
            MenuRepo repo = new(_context);
            return await repo.SearchMenu(param);
        }

    }
}
