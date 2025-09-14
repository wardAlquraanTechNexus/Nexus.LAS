using AutoMapper;
using Nexus.LAS.Domain.Entities.DocumentEntities;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Application.Contracts.Presistence.Services;

namespace Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentTrackingUseCases.Commands.UpdateDocumentTracking;

public class UpdateDocumentTrackingHandler
    : UpdateBaseCommandHandler<DocumentTracking, UpdateDocumentTrackingCommand, IDocumentTrackingService>
{
    public UpdateDocumentTrackingHandler(
        IDocumentTrackingService service,
        IMapper mapper
    ) : base(service, mapper)
    {
    }
}