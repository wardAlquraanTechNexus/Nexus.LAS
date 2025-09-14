using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyLinkUseCases.Commands.CreatePropertyLink;

public class CreatePropertyLinkCommand : CreateBaseCommand
{
    public string RegistersIdc { get; set; } = null!;
    public int RegistersIdn { get; set; }
    public string PropertyLinksValue { get; set; }
    public string? PropertyLinksRemarks { get; set; }
}