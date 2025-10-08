using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using System;

namespace Nexus.LAS.Application.UseCases.FPCUseCases.FPCsODUseCases.Commands.CreateFPCsOD;

public class CreateFPCODCommand : CreateBaseCommand
{
    public int FPCIdn { get; set; }
    public int DocType { get; set; }
    public string? Description { get; set; }
}