using AutoMapper;
using Nexus.LAS.Domain.Entities.PropertyEntities;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Application.Contracts.Presistence.Services;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertiesStatusUseCases.Commands.CreatePropertiesStatus;

public class CreatePropertyStatusHandler
    : CreateBaseCommandHandler<PropertyStatus, CreatePropertyStatusCommand, IPropertyStatusService>
{
    public CreatePropertyStatusHandler(
        IPropertyStatusService service,
        IMapper mapper
    ) : base(service, mapper)
    {
    }
}