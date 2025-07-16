using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.MenuDTOs;
using Nexus.LAS.Domain.ViewModels.Menus;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.MenuUseCases.Queries.GetMenu
{
    public class GetMenuTreeHandler : IRequestHandler<GetMenuTreeQuery, List<MenuTreeDTO>>
    {
        private readonly IMenuService _menuService;
        public GetMenuTreeHandler(IMenuService menuService)
        {
            _menuService = menuService;
        }
        public async Task<List<MenuTreeDTO>> Handle(GetMenuTreeQuery request, CancellationToken cancellationToken)
        {
            List<MenuGroupAuthorizeVM> menus = await _menuService.GetAllMenus();
            Dictionary<int, MenuTreeDTO> dict = menus.ToDictionary(m => m.MenuId , m=>new MenuTreeDTO()
            {
                MenuId = m.MenuId,
                MenuParentId = m.MenuParentId,
                Name = m.Name,
                Path = m.Path,
                IconClass = m.IconClass
            });
     

            List<MenuTreeDTO> root = new();
            foreach (MenuGroupAuthorizeVM menu in menus)
            {
                if (menu.MenuParentId is null)
                    root.Add(dict[menu.MenuId]);
                else if (dict.TryGetValue(menu.MenuParentId.Value, out MenuTreeDTO? parent))
                    parent.Children.Add(dict[menu.MenuId]);
            }

            return root;
        }
    }
}
