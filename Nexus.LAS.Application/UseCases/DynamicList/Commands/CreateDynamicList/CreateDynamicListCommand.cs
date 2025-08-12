using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.DynamicListUseCases.Commands;

public class CreateDynamicListCommand:CreateBaseCommand
{
    public int? ParentId { get; set; }
    public string? Name { get; set; }
    public bool? Active { get; set; }
    public int? Rank { get; set; }
}
