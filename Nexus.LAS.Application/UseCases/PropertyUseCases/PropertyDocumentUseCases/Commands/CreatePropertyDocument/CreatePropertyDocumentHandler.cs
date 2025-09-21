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

    public override async Task<int> Handle(CreatePropertyDocumentCommand command, CancellationToken cancellationToken)
    {
        return await _service.CreatePropertyDocument(command);
    }
}