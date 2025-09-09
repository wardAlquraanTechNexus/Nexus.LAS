using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Domain.Entities.Base;

namespace Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetAllBase
{
    public class GetAllBaseHandler<DTO, Entity, Request, Service> : IRequestHandler<Request, List<DTO>>
        where Entity : BaseEntity
        where Request : GetAllBaseQuery<DTO>
        where Service : IGenericService<Entity>
    {
        protected readonly Service _service;
        protected readonly IMapper _mapper;

        public GetAllBaseHandler(Service service, IMapper mapper)
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
