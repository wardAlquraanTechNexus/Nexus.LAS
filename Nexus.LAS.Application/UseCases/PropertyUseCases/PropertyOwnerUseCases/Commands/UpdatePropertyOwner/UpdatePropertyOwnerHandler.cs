using AutoMapper;
using Nexus.LAS.Domain.Entities.PropertyEntities;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Application.Contracts.Presistence.Services;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyOwnerUseCases.Commands.UpdatePropertyOwner;

public class UpdatePropertyOwnerHandler
    : UpdateBaseCommandHandler<PropertyOwner, UpdatePropertyOwnerCommand, IPropertyOwnerService>
{
    public UpdatePropertyOwnerHandler(
        IPropertyOwnerService service,
        IMapper mapper
    ) : base(service, mapper)
    {
    }
}