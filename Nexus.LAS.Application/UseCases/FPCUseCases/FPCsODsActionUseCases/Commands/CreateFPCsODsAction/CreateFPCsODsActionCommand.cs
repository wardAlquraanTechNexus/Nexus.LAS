using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using System;

namespace Nexus.LAS.Application.UseCases.FPCUseCases.FPCsODsActionUseCases.Commands.CreateFPCsODsAction;

public class CreateFPCsODsActionCommand : CreateBaseCommand
{
    public int FPCOdIdn { get; set; }
    public string ActionType { get; set; } = null!;
    public DateTime ActionDate { get; set; }
    public string? ActionDescription { get; set; }
}