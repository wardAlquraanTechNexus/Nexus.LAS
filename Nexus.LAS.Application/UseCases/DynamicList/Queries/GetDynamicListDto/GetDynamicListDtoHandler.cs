using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.DynamicListDtos;

namespace Nexus.LAS.Application.UseCases.Queries.GetDynamicListDto;

public class GetDynamicListDtoHandler : IRequestHandler<GetDynamicListDTOQuery, List<DynamicListDTO>>
{
    private readonly IDynamicListService _service;
    private readonly IMapper _mapper;

    public GetDynamicListDtoHandler(IDynamicListService service, IMapper mapper)
    {
        _service = service;
        _mapper = mapper;
    }

    public async Task<List<DynamicListDTO>> Handle(GetDynamicListDTOQuery query, CancellationToken cancellationToken)
    {
        var data = await _service.GetListAsync(query);
        var dataMapped = data.Select(x => _mapper.Map<DynamicListDTO>(x)).ToList();

        return dataMapped;
    }
}
