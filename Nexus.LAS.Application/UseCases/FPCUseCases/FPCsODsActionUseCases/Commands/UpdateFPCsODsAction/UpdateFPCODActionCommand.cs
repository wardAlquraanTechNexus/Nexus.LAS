using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using System;

namespace Nexus.LAS.Application.UseCases.FPCUseCases.FPCsODsActionUseCases.Commands.UpdateFPCsODsAction;

public class UpdateFPCODActionCommand : UpdateBaseCommand
{
    public int Id { get; set; }

    public int FPCOdIdn { get; set; }
    public string ActionType { get; set; } = null!;
    public DateTime ActionDate { get; set; }
    public string? ActionDescription { get; set; }
}