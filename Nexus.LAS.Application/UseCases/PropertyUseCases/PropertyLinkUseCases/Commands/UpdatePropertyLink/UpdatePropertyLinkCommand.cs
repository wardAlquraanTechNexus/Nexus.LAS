using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyLinkUseCases.Commands.UpdatePropertyLink;

public class UpdatePropertyLinkCommand : UpdateBaseCommand
{
    public int Id { get; set; }
    public string RegisterIdc { get; set; }
    public int RegisterIdn { get; set; }
    public int PropertyLinksValue { get; set; }
    public string? PropertyLinksRemarks { get; set; }
}