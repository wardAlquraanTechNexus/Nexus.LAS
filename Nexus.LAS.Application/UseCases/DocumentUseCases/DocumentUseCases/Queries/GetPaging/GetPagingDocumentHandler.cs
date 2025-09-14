using AutoMapper;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Domain.Entities.DocumentEntities;
using Nexus.LAS.Application.DTOs.DocumentDTOs;
using Nexus.LAS.Application.Contracts.Presistence.Services;

namespace Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentUseCases.Queries.GetPaging;

public class GetPagingDocumentHandler
    : GetBasePagingHandler<DocumentDto, Document, GetPagingDocumentQuery, IDocumentService>
{
    public GetPagingDocumentHandler(
        IDocumentService service,
        IMapper mapper
    ) : base(service, mapper)
    {
    }
}