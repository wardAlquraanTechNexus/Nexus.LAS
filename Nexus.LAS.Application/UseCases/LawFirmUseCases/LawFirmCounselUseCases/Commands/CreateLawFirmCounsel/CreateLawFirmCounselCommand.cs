using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmCounselUseCases.Commands.CreateLawFirmCounsel
{
    public class CreateLawFirmCounselCommand : CreateBaseCommand
    {
        public int LawFirmId { get; set; }
        public string CounselName { get; set; } = string.Empty;
        public int CounselLevel { get; set; }
        public int Rate { get; set; }
        // Add more fields if needed, e.g. IsPrimary
    }
}