using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Domain.Entities.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases._GenericUseCases.Commands
{
    public class CreateBaseCommandHandler<Entity, Command, Service>:IRequestHandler<Command , int>  where Command: CreateBaseCommand where Entity : BaseEntity where Service : IGenericService<Entity>
    {
        protected readonly Service _service;
        protected readonly IMapper _mapper;

        public CreateBaseCommandHandler(Service service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        public async Task<int> Handle(Command command, CancellationToken cancellationToken)
        {
            var entity = _mapper.Map<Entity>(command);
            return await _service.CreateAsync(entity);
        }
    }
}
