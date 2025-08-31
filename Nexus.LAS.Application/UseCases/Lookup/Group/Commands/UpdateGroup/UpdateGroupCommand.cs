using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.GroupUseCases.Commands
{
    public class UpdateGroupCommand:UpdateBaseCommand
    {
        public int Id { get; set; }
        public string GroupName { get; set; } = null!;

        public string? Description { get; set; }
    }
}
