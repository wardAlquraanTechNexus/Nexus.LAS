using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.DynamicListDtos;

namespace Nexus.LAS.Application.UseCases.Queries.GetDynamicListDto;

public class GetDynamicListDtoHandler : IRequestHandler<GetDynamicListDTOQuery, PagingResult<DynamicListDTO>>
{
    private readonly IDynamicListService _service;
    private readonly IMapper _mapper;

    public GetDynamicListDtoHandler(IDynamicListService service, IMapper mapper)
    {
        _service = service;
        _mapper = mapper;
    }

    public async Task<PagingResult<DynamicListDTO>> Handle(GetDynamicListDTOQuery query, CancellationToken cancellationToken)
    {
        var data = await _service.GetListAsync(query);
        var dataCollection = data.Collection.Select(x => _mapper.Map<DynamicListDTO>(x)).ToList();
        return new PagingResult<DynamicListDTO>(dataCollection , query.Page , query.PageSize , data.TotalRecords);
    }
}
