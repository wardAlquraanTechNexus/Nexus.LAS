using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertiesStatusUseCases.Commands.UpdatePropertiesStatus;

public class UpdatePropertyStatusCommand : UpdateBaseCommand
{
    public int Id { get; set; }
    public int? PropertyId { get; set; }
    public string? Status { get; set; }
}