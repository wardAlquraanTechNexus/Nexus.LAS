using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using System;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyOwnerUseCases.Commands.CreatePropertyOwner;

public class CreatePropertyOwnerCommand : CreateBaseCommand
{
    public int PropertyId { get; set; }
    public string RegisterIdc { get; set; }
    public int RegisterIdn { get; set; }
    public int? Relation { get; set; }
    public DateTime? OwnStartDate { get; set; }
    public DateTime? OwnFinishDate
    {
        get => _ownFinishDate;
        set
        {
            _ownFinishDate = value;
            OwnActive = _ownFinishDate == null;

        }
    }
    public DateTime? _ownFinishDate;
    public bool? OwnActive;
    public string? Remarks { get; set; }
}