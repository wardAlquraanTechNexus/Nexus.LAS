using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using System;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyOwnerUseCases.Commands.CreatePropertyOwner;

public class CreatePropertyOwnerCommand : CreateBaseCommand
{
    public int PropertyId { get; set; }
    public string RegisterIdc { get; set; }
    public int RegisterIdn { get; set; }
    public string? Relation { get; set; }
    public DateTime? OwnStartDate { get; set; }
    public DateTime? OwnFinishDate { get; set; }
    public bool? OwnActive { get; set; }
    public string? Remarks { get; set; }
}