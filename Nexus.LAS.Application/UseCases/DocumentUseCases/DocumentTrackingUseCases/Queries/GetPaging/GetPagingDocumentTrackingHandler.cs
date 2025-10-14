using AutoMapper;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Domain.Entities.DocumentEntities;
using Nexus.LAS.Application.DTOs.DocumentDTOs;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.Base;

namespace Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentTrackingUseCases.Queries.GetPaging;

public class GetPagingDocumentTrackingHandler
    : GetBasePagingHandler<DocumentTrackingDto, DocumentTracking, GetPagingDocumentTrackingQuery, IDocumentTrackingService>
{
    public GetPagingDocumentTrackingHandler(
        IDocumentTrackingService service,
        IMapper mapper
    ) : base(service, mapper)
    {
    }

    public override async Task<PagingResult<DocumentTrackingDto>> Handle(GetPagingDocumentTrackingQuery request, CancellationToken cancellationToken)
    {
        return await _service.GetPaging(request);
    }
}