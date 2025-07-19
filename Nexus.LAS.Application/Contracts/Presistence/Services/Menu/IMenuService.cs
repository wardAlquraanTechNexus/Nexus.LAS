using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Domain.Entities.Lookup;
using Nexus.LAS.Domain.ViewModels.Menus;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.Contracts.Presistence.Services
{
    public interface IMenuService:IGenericService<Menu>
    {
        Task<List<MenuGroupAuthorizeVM>> GetAllMenus();
        Task<List<MenuGroupAuthorizeVM>> GetAllMenusByPath(string path);
    }
}
