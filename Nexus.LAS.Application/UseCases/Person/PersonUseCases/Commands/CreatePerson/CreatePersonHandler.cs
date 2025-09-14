using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.PersonEntities;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.Commands.CreatePerson;

public class CreatePersonHandler : CreateBaseCommandHandler<Person, CreatePersonCommand, IPersonService>
{
    public CreatePersonHandler(IPersonService service, IMapper mapper) : base(service, mapper)
    {
    }
}
