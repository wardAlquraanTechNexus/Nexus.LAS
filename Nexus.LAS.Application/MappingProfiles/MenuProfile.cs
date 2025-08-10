using AutoMapper;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.MenuDTOs;
using Nexus.LAS.Application.UseCases.MenuUseCases.Commands;
using Nexus.LAS.Domain.Entities.Lookup;
using Nexus.LAS.Domain.ViewModels.Menus;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.MappingProfiles
{
    public class MenuProfile:Profile
    {
        public MenuProfile() 
        {
            CreateMap<MenuGroupAuthorizeVM, MenuTreeDTO>();
            CreateMap<Menu, MenuDto>();
            CreateMap<CreateMenuCommand, Menu>();
            CreateMap<UpdateMenuCommand, Menu>();

        }
    }
}
