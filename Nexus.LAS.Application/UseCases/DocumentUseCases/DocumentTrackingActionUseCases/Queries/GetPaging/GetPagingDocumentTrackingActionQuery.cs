using MediatR;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.DocumentDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;

namespace Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentTrackingActionUseCases.Queries.GetPaging
{
    public class GetPagingDocumentTrackingActionQuery :GetBasePagingQuery<DocumentTrackingActionDto>
    {
        public int? DocumentTrackingId { get; set; }
        public string? ActionType { get; set; }
        public string OrderBy { get; set; } = "Id";
        public string OrderDir { get; set; } = "desc";

    }
}