using AutoMapper;
using Nexus.LAS.Domain.Entities.PropertyEntities;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Application.Contracts.Presistence.Services;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyUseCases.Commands.CreateProperty;

public class CreatePropertyHandler
    : CreateBaseCommandHandler<Property, CreatePropertyCommand, IPropertyService>
{
    public CreatePropertyHandler(
        IPropertyService service,
        IMapper mapper
    ) : base(service, mapper)
    {
    }
}