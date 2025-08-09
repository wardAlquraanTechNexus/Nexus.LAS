using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.DynamicListUseCases.Commands;

public class UpdateDynamicListCommand:UpdateBaseCommand
{
    public int Id { get; set; }
    public string? LinkedCategory { get; set; }

    public int? MainListId { get; set; }

    public string? MenuCategory { get; set; }

    public string? MenuValue { get; set; }

    public bool? Active { get; set; }

    public int? Rank { get; set; }
}
