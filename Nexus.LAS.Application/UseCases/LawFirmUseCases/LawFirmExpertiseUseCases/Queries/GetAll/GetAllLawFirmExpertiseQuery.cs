using Nexus.LAS.Application.DTOs.LawFirmDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetAllBase;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmExpertiseUseCases.Queries.GetAll
{
    public class GetAllLawFirmExpertiseQuery : GetAllBaseQuery<LawFirmExpertiseDto>
    {
        public int? LawFirmId { get; set; }
        public string? ExpertiseName { get; set; } = null;

    }
}