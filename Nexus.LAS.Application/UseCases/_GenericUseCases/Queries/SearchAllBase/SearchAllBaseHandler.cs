using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Domain.Entities.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases._GenericUseCases.Queries.SearchAllBase
{
    public class SearchAllBaseHandler<DTO, Entity, Request, Service> : IRequestHandler<Request, List<DTO>>
        where Entity : BaseEntity
        where Request : SearchAllBaseQuery<DTO>
        where Service : IGenericService<Entity>
    {
        protected readonly Service _service;
        protected readonly IMapper _mapper;

        public SearchAllBaseHandler(Service service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;

        }

        public virtual async Task<List<DTO>> Handle(Request request, CancellationToken cancellationToken)
        {

            var data = await _service.SearhAllAsync(request);

            return data.Select(x=> _mapper.Map<DTO>(x)).ToList();

        }

    }
}
