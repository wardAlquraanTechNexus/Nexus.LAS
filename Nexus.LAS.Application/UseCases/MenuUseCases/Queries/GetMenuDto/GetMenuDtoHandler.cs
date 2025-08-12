using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;

namespace Nexus.LAS.Application.UseCases.MenuUseCases.Queries
{
    public class GetMenuDtoHandler:IRequestHandler<GetMenuDtoQuery , PagingResult<MenuDto>>
    {
        private readonly IMenuService _service;
        private readonly IMapper _mapper;

        public GetMenuDtoHandler(IMenuService service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        public async Task<PagingResult<MenuDto>> Handle(GetMenuDtoQuery query, CancellationToken cancellationToken)
        {
            var data = await _service.GetListAsync(query);
            var dataCollection = data.Collection.Select(x => _mapper.Map<MenuDto>(x)).ToList();

            return new PagingResult<MenuDto>(dataCollection , query.Page , query.PageSize , data.TotalRecords);
        }
    }
}
