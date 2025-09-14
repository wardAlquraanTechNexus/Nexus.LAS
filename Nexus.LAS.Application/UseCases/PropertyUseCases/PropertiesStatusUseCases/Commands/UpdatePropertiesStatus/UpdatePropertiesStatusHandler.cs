using AutoMapper;
using Nexus.LAS.Domain.Entities.PropertyEntities;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Application.Contracts.Presistence.Services;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertiesStatusUseCases.Commands.UpdatePropertiesStatus;

public class UpdatePropertiesStatusHandler
    : UpdateBaseCommandHandler<PropertyStatus, UpdatePropertyStatusCommand, IPropertyStatusService>
{
    public UpdatePropertiesStatusHandler(
        IPropertyStatusService service,
        IMapper mapper
    ) : base(service, mapper)
    {
    }
}