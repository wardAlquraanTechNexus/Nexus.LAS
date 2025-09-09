using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmUseCases.Commands.CreateLawFirm
{
    public class CreateLawFirmCommand : CreateBaseCommand
    {
        public string LawFirmName { get; set; }
        public string? LawFirmDescription { get; set; }
        public string? LawFirmAddress { get; set; }
        public string? LawFirmPhone { get; set; }
        public string? LawFirmEmail { get; set; }
        // Add other properties except those in BaseEntity
    }
}