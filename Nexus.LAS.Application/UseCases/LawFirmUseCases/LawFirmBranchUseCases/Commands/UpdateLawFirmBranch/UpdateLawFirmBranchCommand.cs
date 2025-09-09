using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmBranchUseCases.Commands.UpdateLawFirmBranch
{
    public class UpdateLawFirmBranchCommand : UpdateBaseCommand
    {
        public int Id { get; set; }
        public int LawFirmId { get; set; }
        public string BranchName { get; set; }
        public string? BranchAddress { get; set; }
        // Add other properties except those in BaseEntity
    }
}