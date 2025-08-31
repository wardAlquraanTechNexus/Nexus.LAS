using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.MenuUseCases.Queries
{
    public class GetMenuParentHandler : IRequestHandler<GetManuParentQuery , List<MenuDto>>
    {
        private readonly IMenuService _service;
        private readonly IMapper _mapper;
        public GetMenuParentHandler(IMenuService service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        public async Task<List<MenuDto>> Handle(GetManuParentQuery query , CancellationToken cancellationToken)
        {
            var data = await _service.GetParents(query.Id);
            return  data.Select(x=>_mapper.Map<MenuDto>(x)).ToList();
        }

    }
}
