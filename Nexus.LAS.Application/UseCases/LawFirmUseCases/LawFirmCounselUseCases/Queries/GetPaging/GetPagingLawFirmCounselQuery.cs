using Nexus.LAS.Application.DTOs.LawFirmDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmCounselUseCases.Queries.GetPaging
{
    public class GetPagingLawFirmCounselQuery : GetBasePagingQuery<LawFirmCounselDto>
    {
        public int? LawFirmId { get; set; }
        public string? CounselName { get; set; }
    }
}