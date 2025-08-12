using MediatR;
using Nexus.LAS.Application.DTOs.DynamicListDtos;
using Nexus.LAS.Application.UseCases.Base;

namespace Nexus.LAS.Application.UseCases.Queries.GetDynamicListDto;

public class GetDynamicListDTOQuery: BaseParams , IRequest<List<DynamicListDTO>>
{
    public int? Id { get; set; }
    public string? LinkedCategory { get; set; }
    public int? MainListId { get; set; }
    public string? MenuCategory { get; set; }
    public string? MenuValue { get; set; }
    public bool? Active { get; set; }
    public int? Rank { get; set; }
}
