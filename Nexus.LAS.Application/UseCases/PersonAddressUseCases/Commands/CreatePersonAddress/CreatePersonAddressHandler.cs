// CreatePersonAddressHandler.cs
using AutoMapper;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.PersonEntities;

namespace Nexus.LAS.Application.UseCases.PersonAddressUseCases.Commands.CreatePersonAddress;

public class CreatePersonAddressHandler : CreateBaseCommandHandler<PersonsAddress, CreatePersonAddressCommand, IPersonAddressService>
{
    public CreatePersonAddressHandler(IPersonAddressService service, IMapper mapper) : base(service, mapper)
    {
    }
}