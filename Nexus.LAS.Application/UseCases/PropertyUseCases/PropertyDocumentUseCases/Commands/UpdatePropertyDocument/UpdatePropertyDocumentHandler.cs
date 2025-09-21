using AutoMapper;
using Nexus.LAS.Domain.Entities.PropertyEntities;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Application.Contracts.Presistence.Services;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyDocumentUseCases.Commands.UpdatePropertyDocument;

public class UpdatePropertyDocumentHandler
    : UpdateBaseCommandHandler<PropertyDocument, UpdatePropertyDocumentCommand, IPropertyDocumentService>
{
    public UpdatePropertyDocumentHandler(
        IPropertyDocumentService service,
        IMapper mapper
    ) : base(service, mapper)
    {
    }

    public override async Task<bool> Handle(UpdatePropertyDocumentCommand request, CancellationToken cancellationToken)
    {
        await _service.UpdatPropertyDocument(request);
        return true;
    }
}