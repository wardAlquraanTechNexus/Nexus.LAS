using MediatR;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.DynamicListDtos;
using Nexus.LAS.Application.UseCases.Base;

namespace Nexus.LAS.Application.UseCases.Queries.GetDynamicListDto;

public class GetDynamicListDTOQuery: BaseParams , IRequest<PagingResult<DynamicListDTO>>
{
    public int? Id { get; set; }
    public int? ParentId { get; set; }
    public string? Name { get; set; }
    public bool? Active { get; set; }
    public int? Rank { get; set; }
}
