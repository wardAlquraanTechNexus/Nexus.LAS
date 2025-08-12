using MediatR;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.MenuUseCases.Queries
{
    public class GetMenuDtoQuery:BaseParams , IRequest<PagingResult<MenuDto>>
    {
        public int? Id { get; set; }
        public int? ParentId { get; set; }
        public string? Name { get; set; }
        public int? Rank { get; set; }
    }
}
