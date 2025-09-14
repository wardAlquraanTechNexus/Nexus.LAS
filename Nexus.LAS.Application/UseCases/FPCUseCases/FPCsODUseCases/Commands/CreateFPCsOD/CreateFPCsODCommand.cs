using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using System;

namespace Nexus.LAS.Application.UseCases.FPCUseCases.FPCsODUseCases.Commands.CreateFPCsOD;

public class CreateFPCODCommand : CreateBaseCommand
{
    public int Id { get; set; }
    public string FPCsOdIdc { get; set; }
    public string Description { get; set; }
    public DateTime? CreatedDate { get; set; }
}