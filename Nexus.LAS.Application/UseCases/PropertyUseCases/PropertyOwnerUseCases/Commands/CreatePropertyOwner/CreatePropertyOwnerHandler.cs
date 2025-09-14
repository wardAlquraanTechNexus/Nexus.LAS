using AutoMapper;
using Nexus.LAS.Domain.Entities.PropertyEntities;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Application.Contracts.Presistence.Services;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyOwnerUseCases.Commands.CreatePropertyOwner;

public class CreatePropertyOwnerHandler
    : CreateBaseCommandHandler<PropertyOwner, CreatePropertyOwnerCommand, IPropertyOwnerService>
{
    public CreatePropertyOwnerHandler(
        IPropertyOwnerService service,
        IMapper mapper
    ) : base(service, mapper)
    {
    }
}