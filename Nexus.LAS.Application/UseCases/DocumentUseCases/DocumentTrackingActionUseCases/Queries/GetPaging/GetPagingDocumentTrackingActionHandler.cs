using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.DocumentDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Domain.Entities.DocumentEntities;

namespace Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentTrackingActionUseCases.Queries.GetPaging
{
    public class GetPagingDocumentTrackingActionHandler : GetBasePagingHandler<DocumentTrackingActionDto, DocumentTrackingAction, GetPagingDocumentTrackingActionQuery, IDocumentTrackingsActionService>
    {
        public GetPagingDocumentTrackingActionHandler(IDocumentTrackingsActionService service, IMapper mapper) : base(service, mapper)
        {
        }
    }
}