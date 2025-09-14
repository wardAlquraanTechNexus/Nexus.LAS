using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using System;

namespace Nexus.LAS.Application.UseCases.FPCUseCases.FPCUseCases.Commands.UpdateFPC;

public class UpdateFPCCommand : UpdateBaseCommand
{
    public int Id { get; set; }
    public string FpcCode { get; set; } = null!;
    public string RegisterIdc { get; set; } = null!;
    public int RegisterIdn { get; set; }
    public string FpcStatus { get; set; } = null!;
    public bool Private { get; set; }
}