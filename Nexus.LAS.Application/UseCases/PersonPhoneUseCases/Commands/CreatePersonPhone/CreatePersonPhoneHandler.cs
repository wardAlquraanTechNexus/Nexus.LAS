// CreatePersonPhoneHandler.cs
using AutoMapper;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.PersonEntities;

namespace Nexus.LAS.Application.UseCases.PersonPhoneUseCases.Commands.CreatePersonPhone;

public class CreatePersonPhoneHandler : CreateBaseCommandHandler<PersonsPhone, CreatePersonPhoneCommand, IPersonPhoneService>
{
    public CreatePersonPhoneHandler(IPersonPhoneService service, IMapper mapper) : base(service, mapper)
    {
    }
}