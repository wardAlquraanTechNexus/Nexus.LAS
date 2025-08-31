// UpdatePersonPhoneHandler.cs
using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.PersonEntities;

namespace Nexus.LAS.Application.UseCases.PersonPhoneUseCases.Commands.UpdatePersonPhone;

public class UpdatePersonPhoneHandler : UpdateBaseCommandHandler<PersonsPhone, UpdatePersonPhoneCommand, IPersonPhoneService>
{
    public UpdatePersonPhoneHandler(IPersonPhoneService service, IMapper mapper) : base(service, mapper)
    {
    }
}