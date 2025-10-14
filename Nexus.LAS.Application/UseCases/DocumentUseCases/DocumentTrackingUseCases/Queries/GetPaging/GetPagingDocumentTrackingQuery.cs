using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Application.DTOs.DocumentDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;

namespace Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentTrackingUseCases.Queries.GetPaging;

public class GetPagingDocumentTrackingQuery : GetBasePagingQuery<DocumentTrackingDto>
{
    public int? Id { get; set; }
    public string? SearchBy { get; set; }
    public string? DocumentTrackingCode { get; set; }
    public string? ReferenceNumber { get; set; }
    public int? PersonId { get; set; }
    public string? OrderBy { get; set; }
    public string? OrderDir { get; set; }
    public string? RegisterIdc { get; set; }
    public int RegisterIdn { get; set; }

}