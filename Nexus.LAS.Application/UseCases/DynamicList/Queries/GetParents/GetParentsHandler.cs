using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.DynamicListDtos;
using Nexus.LAS.Application.UseCases.Queries.GetDynamicListDto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.Queries.GetParents
{
    public class GetDynamicListParentsHandler: IRequestHandler<GetDynamicListParentsQuery, List<DynamicListDTO>>
    {
        private readonly IDynamicListService _service;
        private readonly IMapper _mapper;

        public GetDynamicListParentsHandler(IDynamicListService service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        public async Task<List<DynamicListDTO>> Handle(GetDynamicListParentsQuery query, CancellationToken cancellationToken)
        {
            var data = await _service.GetParents(query.Id);
            var dataMapped = data.Select(x=>_mapper.Map<DynamicListDTO>(x)).ToList();

            return dataMapped;
        }
    }
}
