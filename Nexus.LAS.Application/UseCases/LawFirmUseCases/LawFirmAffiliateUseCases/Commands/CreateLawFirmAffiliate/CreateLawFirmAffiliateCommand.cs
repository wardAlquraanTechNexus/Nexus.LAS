using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmAffiliateUseCases.Commands.CreateLawFirmAffiliate
{
    public class CreateLawFirmAffiliateCommand : CreateBaseCommand
    {
        public int LawFirmId { get; set; }
        public string AffiliateName { get; set; }
        public string? AffiliateDescription { get; set; }
        // Add other properties except those in BaseEntity
    }
}