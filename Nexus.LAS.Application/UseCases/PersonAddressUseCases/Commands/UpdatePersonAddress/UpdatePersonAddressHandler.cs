// UpdatePersonAddressHandler.cs
using AutoMapper;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.PersonEntities;

namespace Nexus.LAS.Application.UseCases.PersonAddressUseCases.Commands.UpdatePersonAddress;

public class UpdatePersonAddressHandler : UpdateBaseCommandHandler<PersonsAddress, UpdatePersonAddressCommand, IPersonAddressService>
{
    public UpdatePersonAddressHandler(IPersonAddressService service, IMapper mapper) : base(service, mapper)
    {
    }
}