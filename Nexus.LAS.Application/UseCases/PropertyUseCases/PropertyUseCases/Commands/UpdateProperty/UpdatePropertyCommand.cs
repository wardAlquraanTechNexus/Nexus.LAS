using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Constants.Enums;
using System;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyUseCases.Commands.UpdateProperty;

public class UpdatePropertyCommand : UpdateBaseCommand
{
    public int Id { get; set; }

    public string Code { get; set; } = null!;

    public int? TypeOfTitle { get; set; }

    public bool? Grantor { get; set; }

    public string? GrantorAddress { get; set; }

    public DateTime? GrantorTitleCommencementDate { get; set; }

    public DateTime? GrantorTitleExpiryDate { get; set; }

    public bool? GrantorTitleExpiryActiveReminder { get; set; }

    public string? GrantorDescription { get; set; }

    public int? LocationCountryId { get; set; }

    public int? LocationCityId { get; set; }

    public int? LocationAreaId { get; set; }

    public string? LocationDetails { get; set; }

    public int? Type { get; set; }

    public int? Purpose { get; set; }

    public string? LegalStatuses { get; set; } // seperator by comma
    public CommonStatus Status { get; set; }
    public bool Private { get; set; }

    public string? Plot { get; set; }

    public long? PlotFArea { get; set; }
    public long? PlotMArea { get; set; }
    public long? PropertyFArea { get; set; }
    public long? PropertyMArea { get; set; }
}