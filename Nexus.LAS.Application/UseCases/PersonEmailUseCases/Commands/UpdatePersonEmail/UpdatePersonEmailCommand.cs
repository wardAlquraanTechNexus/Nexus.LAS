// UpdatePersonEmailCommand.cs
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.PersonEmailUseCases.Commands.UpdatePersonEmail;

public class UpdatePersonEmailCommand : UpdateBaseCommand
{
    public int Id { get; set; }
    public int? PersonsIdn { get; set; }
    public bool? EmailPrimary { get; set; }
    public string? EmailType { get; set; }
    public string? EmailNumber { get; set; }
}