// CreatePersonEmailCommand.cs
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.PersonEmailUseCases.Commands.CreatePersonEmail;

public class CreatePersonEmailCommand : CreateBaseCommand
{
    public int PersonsIdn { get; set; }
    public bool EmailPrimary { get; set; }
    public string Email { get; set; }
}