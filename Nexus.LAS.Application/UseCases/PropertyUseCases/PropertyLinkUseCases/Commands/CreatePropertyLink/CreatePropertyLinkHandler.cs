using AutoMapper;
using Nexus.LAS.Domain.Entities.PropertyEntities;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Application.Contracts.Presistence.Services;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyLinkUseCases.Commands.CreatePropertyLink;

public class CreatePropertyLinkHandler
    : CreateBaseCommandHandler<PropertyLink, CreatePropertyLinkCommand, IPropertyLinkService>
{
    public CreatePropertyLinkHandler(
        IPropertyLinkService service,
        IMapper mapper
    ) : base(service, mapper)
    {
    }
}