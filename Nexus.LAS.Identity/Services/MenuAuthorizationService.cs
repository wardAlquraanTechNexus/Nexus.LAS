using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Identity.Services
{
    public class MenuAuthorizationService: IMenuAuthorizationService
    {
        private readonly IMenuService _menuService;
        public MenuAuthorizationService(IMenuService menuService)
        {
            _menuService = menuService;
        }


        public async Task<bool> HasAccessAsync(string username, string pathname, Domain.Constants.Enums.MethodType methodType)
        {
            if (string.IsNullOrWhiteSpace(username) || string.IsNullOrWhiteSpace(pathname))
                return false;

            var pathes = pathname.Split('/');
            var menus = await _menuService.GetAllMenusByPath(pathes[^1]);
            menus = menus.Where(x => x.Username.Equals(username, StringComparison.OrdinalIgnoreCase)).ToList();
            if (!menus.Any())
                return true; // no menu defined → allow access

       

            return methodType switch
            {
                Domain.Constants.Enums.MethodType.Get => menus.Any(x => x.Access),
                Domain.Constants.Enums.MethodType.Insert => menus.Any(x => x.CanInsert),
                Domain.Constants.Enums.MethodType.Update => menus.Any(x => x.CanUpdate),
                Domain.Constants.Enums.MethodType.Delete => menus.Any(x => x.CanDelete),
                Domain.Constants.Enums.MethodType.Admin => menus.Any(x => x.Admin),
                _ => false
            };
        }
    }
}
