using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Domain.Entities.Base;

namespace Nexus.LAS.Application.UseCases._GenericUseCases.Commands
{
    public class UpdateBaseCommandHandler<Entity, Command, Service> : IRequestHandler<Command, bool> where Command : UpdateBaseCommand where Entity : BaseEntity where Service : IGenericService<Entity>
    {
        protected readonly Service _service;
        protected readonly IMapper _mapper;

        public UpdateBaseCommandHandler(Service service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        public virtual async Task<bool> Handle(Command command, CancellationToken cancellationToken)
        {
            var entity = _mapper.Map<Entity>(command);
            await _service.UpdateAsync(entity);
            return true;
        }
    }
}
