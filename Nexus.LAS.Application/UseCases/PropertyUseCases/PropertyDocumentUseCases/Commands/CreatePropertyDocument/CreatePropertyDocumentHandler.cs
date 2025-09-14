using AutoMapper;
using Nexus.LAS.Domain.Entities.PropertyEntities;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Application.Contracts.Presistence.Services;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyDocumentUseCases.Commands.CreatePropertyDocument;

public class CreatePropertyDocumentHandler
    : CreateBaseCommandHandler<PropertyDocument, CreatePropertyDocumentCommand, IPropertyDocumentService>
{
    public CreatePropertyDocumentHandler(
        IPropertyDocumentService service,
        IMapper mapper
    ) : base(service, mapper)
    {
    }
}