using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.DynamicListDtos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.Queries.GetDynamicListDto
{
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
            var dataMapped = new PagingResult<DynamicListDTO>(
                                data.Collection.Select(x => _mapper.Map<DynamicListDTO>(x)).ToList(),
                                query.Page,
                                query.PageSize,
                                data.TotalRecords);

            return dataMapped;
        }
    }
}
