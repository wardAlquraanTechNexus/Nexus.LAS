using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmBranchUseCases.Commands.CreateLawFirmBranch
{
    public class CreateLawFirmBranchCommand : CreateBaseCommand
    {
        public int LawFirmId { get; set; }
        public string BranchName { get; set; }
        public string? BranchAddress { get; set; }
        // Add other properties except those in BaseEntity
    }
}