using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Domain.Entities.Lookup;
using Nexus.LAS.Domain.ViewModels.Menus;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services
{
    public class MenuService : GenericService<Menu>, IMenuService
    {
        private readonly IUserIdentityService _userIdentityService;
        public MenuService(NexusLASDbContext context, IUserIdentityService userIdentityService) : base(context)
        {
            _userIdentityService = userIdentityService;
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

    }
}
