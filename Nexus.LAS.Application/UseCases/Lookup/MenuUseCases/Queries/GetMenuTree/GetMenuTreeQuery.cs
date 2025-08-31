using MediatR;
using Nexus.LAS.Application.DTOs.MenuDTOs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.MenuUseCases.Queries.GetMenu
{
    public class GetMenuTreeQuery: IRequest<List<MenuTreeDTO>>
    {

    }
}
