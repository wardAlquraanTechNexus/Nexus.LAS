using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.NumberUseCases.NumberUseCases.Commands.UpdateNumber;

public class UpdateNumberCommand : UpdateBaseCommand
{
    public int Id { get; set; }
}