using AutoMapper;
using Nexus.LAS.Domain.Entities.DocumentEntities;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Application.Contracts.Presistence.Services;

namespace Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentTrackingUseCases.Commands.CreateDocumentTracking;

public class CreateDocumentTrackingHandler
    : CreateBaseCommandHandler<DocumentTracking, CreateDocumentTrackingCommand, IDocumentTrackingService>
{
    public CreateDocumentTrackingHandler(
        IDocumentTrackingService service,
        IMapper mapper
    ) : base(service, mapper)
    {
    }
}