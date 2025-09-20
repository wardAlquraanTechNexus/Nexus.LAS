using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyLinkUseCases.Commands.CreatePropertyLink;

public class CreatePropertyLinkCommand : CreateBaseCommand
{
    public string RegisterIdc { get; set; }
    public int RegisterIdn { get; set; }
    public int PropertyLinksValue { get; set; }
    public string? PropertyLinksRemarks { get; set; }
}