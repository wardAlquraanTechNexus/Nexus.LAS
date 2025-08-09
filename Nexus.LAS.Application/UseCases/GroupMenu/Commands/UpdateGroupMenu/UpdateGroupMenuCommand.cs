using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.GroupMenuUseCases.Commands;

public class UpdateGroupMenuCommand:UpdateBaseCommand
{
    public int Id { get; set; }
    public int GroupId { get; set; }
    public int MenuId { get; set; }
    public int? Access { get; set; }
    public int? CanInsert { get; set; }
    public int? CanUpdate { get; set; }
    public int? CanDelete { get; set; }
    public int? Admin { get; set; }
}
