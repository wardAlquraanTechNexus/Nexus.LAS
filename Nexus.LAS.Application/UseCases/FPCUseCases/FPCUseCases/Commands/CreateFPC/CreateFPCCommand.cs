using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Constants.Enums;
using System;

namespace Nexus.LAS.Application.UseCases.FPCUseCases.FPCUseCases.Commands.CreateFPC;

public class CreateFPCCommand : CreateBaseCommand
{
    public string RegisterIdc { get; set; } = null!;
    public int RegisterIdn { get; set; }
    public CommonStatus FpcStatus = CommonStatus.New;
    public bool Private { get; set; }
}