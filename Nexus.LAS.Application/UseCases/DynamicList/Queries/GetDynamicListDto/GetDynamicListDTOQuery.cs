using MediatR;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.DynamicListDtos;
using Nexus.LAS.Application.UseCases.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.Queries.GetDynamicListDto
{
    public class GetDynamicListDTOQuery: BaseParams , IRequest<PagingResult<DynamicListDTO>>
    {
        public int? Id { get; set; }
        public int? MainListId { get; set; }
        public string? MenuCategory { get; set; }
        public string? MenuValue { get; set; }
        public bool? Active { get; set; }
        public int? Rank { get; set; }
    }
}
