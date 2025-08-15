using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.MenuUseCases.Queries
{
    public class SearchMenuHandler : IRequestHandler<SearchMenuQuery , PagingResult<MenuDto>>
    {

        protected readonly IMenuService _service;
        protected readonly IMapper _mapper;
        public SearchMenuHandler(IMenuService service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        public async Task<PagingResult<MenuDto>> Handle(SearchMenuQuery query, CancellationToken cancellationToken)
        {
            var data = await _service.SearchMenu(query);
            var dataCollection = data.Collection.Select(x => _mapper.Map<MenuDto>(x)).ToList();

            return new PagingResult<MenuDto>(dataCollection, query.Page, query.PageSize, data.TotalRecords);
        }
    }
}
