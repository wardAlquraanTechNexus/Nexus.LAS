using MediatR;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.GroupMenuDTOs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.Queries
{
    public class GetAllGroupMenuQuery: IRequest<List<SearchGroupMenuDTO>>
    {
        public int? GroupId { get; set; }
        public int? MenuId { get; set; }
        public string? GroupName { get; set; }
        public string? MenuName { get; set; }
        public string OrderBy { get; set; } = "id";
        public string OrderDir { get; set; } = "desc";
    }
}
