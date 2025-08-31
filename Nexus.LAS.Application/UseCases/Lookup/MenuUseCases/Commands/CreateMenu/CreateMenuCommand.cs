using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.MenuUseCases.Commands;

public class CreateMenuCommand:CreateBaseCommand
{
    public int? ParentId { get; set; }
    public string Name { get; set; } = null!;
    public string? Path { get; set; }
    public int? Rank { get; set; }
    public string? Description { get; set; }
    public string? IconClass { get; set; }
    public bool InDashboard { get; set; }

}
