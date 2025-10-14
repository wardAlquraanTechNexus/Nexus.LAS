using AutoMapper;
using MediatR;
using Nexus.LAS.Domain.Entities.DocumentEntities;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Application.Contracts.Presistence.Services;

namespace Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentTrackingActionUseCases.Commands.CreateDocumentTrackingAction
{
    public class CreateDocumentTrackingActionHandler : CreateBaseCommandHandler<DocumentTrackingAction, CreateDocumentTrackingActionCommand, IDocumentTrackingsActionService>
    {
        public CreateDocumentTrackingActionHandler(IDocumentTrackingsActionService service, IMapper mapper) : base(service, mapper)
        {
        }
    }
}