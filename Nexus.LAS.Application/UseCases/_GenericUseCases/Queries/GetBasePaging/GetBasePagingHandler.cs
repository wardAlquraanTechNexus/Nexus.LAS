using AutoMapper;
using MediatR;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Http.Internal;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Primitives;
using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.Base;
using Nexus.LAS.Domain.Entities.Base;
using Nexus.LAS.Domain.ExtensionMethods;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging
{
    public class GetBasePagingHandler<DTO , Entity , Request , Service>:IRequestHandler<Request , PagingResult<DTO>>
        where Entity : BaseEntity
        where Request : GetBasePagingQuery<DTO> 
        where Service : IGenericService<Entity> 
    {
        protected readonly Service _service;
        protected readonly IMapper _mapper;

        public GetBasePagingHandler(Service service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;

        }

        public virtual async Task<PagingResult<DTO>> Handle(Request request, CancellationToken cancellationToken)
        {
            
            var data = await _service.SearchAsync(request);

            
            return new PagingResult<DTO>
            {
                Collection = data.Collection.Select(x=>_mapper.Map<DTO>(x)).ToList(),
                Page = data.Page,
                PageSize = data.PageSize,
                TotalPages = data.TotalPages,
                TotalRecords = data.TotalRecords
            };
        }

    }
}
