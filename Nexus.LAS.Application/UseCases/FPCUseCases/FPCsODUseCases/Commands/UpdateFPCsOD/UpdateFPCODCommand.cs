using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using System;

namespace Nexus.LAS.Application.UseCases.FPCUseCases.FPCsODUseCases.Commands.UpdateFPCsOD;

public class UpdateFPCODCommand : UpdateBaseCommand
{
    public int Id { get; set; }
    public int FPCIdn { get; set; }
    public string DocType { get; set; } = null!;
    public string? Description { get; set; }
}