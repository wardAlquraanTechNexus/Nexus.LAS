using AutoMapper;
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
        private readonly IMapper _mapper;
        public GetMenuTreeHandler(IMenuService menuService, IMapper mapper)
        {
            _menuService = menuService;
            _mapper = mapper;
        }
        public async Task<List<MenuTreeDTO>> Handle(GetMenuTreeQuery request, CancellationToken cancellationToken)
        {
            List<MenuGroupAuthorizeVM> menus = await _menuService.GetAllMenus();
            Dictionary<int, MenuTreeDTO> dict = menus.ToDictionary(m => m.MenuId , m=>_mapper.Map<MenuTreeDTO>(m));
     

            List<MenuTreeDTO> root = new();
            foreach (MenuGroupAuthorizeVM menu in menus)
            {
                if (menu.MenuParentId is null)
                    root.Add(dict[menu.MenuId]);
                else if (dict.TryGetValue(menu.MenuParentId.Value, out MenuTreeDTO? parent))
                {
                    parent.Children.Add(dict[menu.MenuId]);
                }
            }

            SortMenuTreeByRank(root);

            return root;
        }

        void SortMenuTreeByRank(List<MenuTreeDTO> nodes)
        {
            nodes.Sort((a, b) => Nullable.Compare(a.Rank, b.Rank));
            foreach (var node in nodes)
            {
                if (node.Children?.Count > 0)
                    SortMenuTreeByRank(node.Children);
            }
        }
    }
}
