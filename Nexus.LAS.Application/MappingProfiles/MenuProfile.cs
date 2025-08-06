using AutoMapper;
using Nexus.LAS.Application.DTOs.MenuDTOs;
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
        }
    }
}
