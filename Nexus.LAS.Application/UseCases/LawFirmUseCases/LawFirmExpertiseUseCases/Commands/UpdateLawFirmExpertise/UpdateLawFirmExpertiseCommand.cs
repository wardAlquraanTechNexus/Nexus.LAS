using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmExpertiseUseCases.Commands.UpdateLawFirmExpertise
{
    public class UpdateLawFirmExpertiseCommand : UpdateBaseCommand
    {
        public int Id { get; set; }
        public int LawFirmId { get; set; }
        public string ExpertiseName { get; set; }
    }
}