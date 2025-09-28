using Nexus.LAS.Application.DTOs.LawFirmDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmExpertiseUseCases.Queries.GetPaging
{
    public class GetPagingLawFirmExpertiseQuery : GetBasePagingQuery<LawFirmExpertiseDto>
    {
        public int? LawFirmId { get; set; }
        public string? ExpertiseName { get; set; } = null!;
    }
}