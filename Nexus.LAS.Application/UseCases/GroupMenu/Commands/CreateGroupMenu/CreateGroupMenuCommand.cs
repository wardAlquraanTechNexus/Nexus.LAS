using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.GroupMenuUseCases.Commands;

public class CreateGroupMenuCommand:CreateBaseCommand
{
    public int GroupId { get; set; }
    public int MenuId { get; set; }
    public bool Access { get; set; }
    public bool Canboolsert { get; set; }
    public bool CanUpdate { get; set; }
    public bool CanDelete { get; set; }
    public bool Admin { get; set; }

}
