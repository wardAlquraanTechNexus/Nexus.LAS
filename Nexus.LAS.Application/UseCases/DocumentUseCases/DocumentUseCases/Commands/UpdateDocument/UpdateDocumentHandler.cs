using AutoMapper;
using Nexus.LAS.Domain.Entities.DocumentEntities;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Application.Contracts.Presistence.Services;

namespace Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentUseCases.Commands.UpdateDocument;

public class UpdateDocumentHandler
    : UpdateBaseCommandHandler<Document, UpdateDocumentCommand, IDocumentService>
{
    public UpdateDocumentHandler(
        IDocumentService service,
        IMapper mapper
    ) : base(service, mapper)
    {
    }
}