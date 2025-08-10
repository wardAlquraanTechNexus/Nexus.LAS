using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs;

namespace Nexus.LAS.Application.UseCases.MenuUseCases.Queries
{
    public class GetMenuDtoHandler:IRequestHandler<GetMenuDtoQuery , List<MenuDto>>
    {
        private readonly IMenuService _service;
        private readonly IMapper _mapper;

        public GetMenuDtoHandler(IMenuService service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        public async Task<List<MenuDto>> Handle(GetMenuDtoQuery query, CancellationToken cancellationToken)
        {
            var data = await _service.GetListAsync(query);
            var dataMapped = data.Select(x => _mapper.Map<MenuDto>(x)).ToList();

            return dataMapped;
        }
    }
}
