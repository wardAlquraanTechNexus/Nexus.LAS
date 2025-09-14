using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertiesStatusUseCases.Commands.CreatePropertiesStatus;

public class CreatePropertyStatusCommand : CreateBaseCommand
{
    public int Id { get; set; }
    public int? PropertyId { get; set; }
    public string? Status { get; set; }
}