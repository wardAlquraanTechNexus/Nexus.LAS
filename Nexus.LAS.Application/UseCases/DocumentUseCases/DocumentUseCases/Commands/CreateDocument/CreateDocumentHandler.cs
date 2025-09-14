using AutoMapper;
using Nexus.LAS.Domain.Entities.DocumentEntities;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Application.Contracts.Presistence.Services;

namespace Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentUseCases.Commands.CreateDocument;

public class CreateDocumentHandler
    : CreateBaseCommandHandler<Document, CreateDocumentCommand, IDocumentService>
{
    public CreateDocumentHandler(
        IDocumentService service,
        IMapper mapper
    ) : base(service, mapper)
    {
    }
}