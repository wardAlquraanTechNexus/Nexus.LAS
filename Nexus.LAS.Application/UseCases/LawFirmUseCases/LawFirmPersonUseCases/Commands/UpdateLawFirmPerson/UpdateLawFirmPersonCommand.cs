using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmPersonUseCases.Commands.UpdateLawFirmPerson
{
    public class UpdateLawFirmPersonCommand : UpdateBaseCommand
    {
        public int Id { get; set; }
        public int LawFirmId { get; set; }
        public int PersonId { get; set; }
        public string? Position { get; set; }
        // Add other properties except those in BaseEntity
    }
}