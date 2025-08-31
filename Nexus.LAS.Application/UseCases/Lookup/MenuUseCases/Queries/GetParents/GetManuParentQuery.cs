using MediatR;
using Nexus.LAS.Application.DTOs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.MenuUseCases.Queries
{
    public class GetManuParentQuery:IRequest<List<MenuDto>>
    {
        public int Id { get; set; }

    }
}
