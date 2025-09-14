using AutoMapper;
using Nexus.LAS.Domain.Entities.PropertyEntities;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Application.Contracts.Presistence.Services;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyLinkUseCases.Commands.UpdatePropertyLink;

public class UpdatePropertyLinkHandler
    : UpdateBaseCommandHandler<PropertyLink, UpdatePropertyLinkCommand, IPropertyLinkService>
{
    public UpdatePropertyLinkHandler(
        IPropertyLinkService service,
        IMapper mapper
    ) : base(service, mapper)
    {
    }
}