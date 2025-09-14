using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.PersonEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.PersonIdDetailUseCases.Commands.CreatePersonIdDetail
{
    public class CreatePersonIdDetailHandler : CreateBaseCommandHandler<PersonsIDDetail , CreatePersonIdDetailCommand , IPersonIdDetailService>
    {

        public CreatePersonIdDetailHandler(IPersonIdDetailService service, IMapper mapper) : base(service, mapper)
        {
        }

        public override async Task<int> Handle(CreatePersonIdDetailCommand request, CancellationToken cancellationToken)
        {
            return await _service.CreatePersonIdDetail(request);
        }
    }
}
