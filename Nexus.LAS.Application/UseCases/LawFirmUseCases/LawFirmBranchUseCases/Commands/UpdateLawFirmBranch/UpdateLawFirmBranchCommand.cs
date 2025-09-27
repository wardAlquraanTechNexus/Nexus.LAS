using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmBranchUseCases.Commands.UpdateLawFirmBranch
{
    public class UpdateLawFirmBranchCommand : UpdateBaseCommand
    {
        public int Id { get; set; }
        public int LawFirmId { get; set; }
        public string? BranchName { get; set; }
        public int? CountryId { get; set; }
        public string? City { get; set; }
        public string? Phone1 { get; set; }
        public string? Phone2 { get; set; }
        public string? Phone3 { get; set; }
        public string? Fax { get; set; }
        public string? Email1 { get; set; }
        public string? Email2 { get; set; }
        public bool BranchPrimary { get; set; }
    }
}