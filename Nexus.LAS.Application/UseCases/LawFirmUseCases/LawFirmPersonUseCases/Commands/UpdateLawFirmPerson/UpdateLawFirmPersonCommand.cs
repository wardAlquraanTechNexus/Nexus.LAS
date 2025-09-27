using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmPersonUseCases.Commands.UpdateLawFirmPerson
{
    public class UpdateLawFirmPersonCommand : UpdateBaseCommand
    {
        public int Id { get; set; }
        public int LawFirmId { get; set; }
        public int? StaffLevel { get; set; }
        public string? Name { get; set; }
        public string? Practice { get; set; }
        public string? Email { get; set; }
        public string? Phone { get; set; }
        public bool? StaffStatus { get; set; }
    }
}