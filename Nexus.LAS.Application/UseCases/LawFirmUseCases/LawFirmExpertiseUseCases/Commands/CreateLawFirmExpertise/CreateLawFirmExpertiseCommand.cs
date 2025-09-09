using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmExpertiseUseCases.Commands.CreateLawFirmExpertise
{
    public class CreateLawFirmExpertiseCommand : CreateBaseCommand
    {
        public int LawFirmId { get; set; }
        public string ExpertiseName { get; set; }
    }
}