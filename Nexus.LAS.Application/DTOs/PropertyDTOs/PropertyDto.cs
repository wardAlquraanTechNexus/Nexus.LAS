using Nexus.LAS.Domain.CommonAttributes;
using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Constants.Enums;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Nexus.LAS.Application.DTOs.PropertyDTOs;

public class PropertyDto
{
    public int Id { get; set; }

    public string Code { get; set; }

    public int TypeOfTitle { get; set; }

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

    public string? LegalStatuses 
    { 
        get =>  _legatStatus;
        set
        {
            if (string.IsNullOrEmpty(value))
            {
                _legatStatus = null;
                LegalStatusIds.Clear();
            }
            else
            {
                _legatStatus = value;
                LegalStatusIds = value.Split(',', StringSplitOptions.RemoveEmptyEntries)
                                 .Select(s => int.TryParse(s, out var id) ? id : (int?)null)
                                 .Where(id => id.HasValue)
                                 .Select(id => id.Value)
                                 .ToList();
            }
        }
    }
    public string? _legatStatus;
    public List<int> LegalStatusIds { get; set; } = new();
    public CommonStatus Status { get; set; }
    public bool Private { get; set; }

    public string? Plot { get; set; }

    public long? PlotFArea { get; set; }
    public long? PlotMArea { get; set; }
    public long? PropertyFArea { get; set; }
    public long? PropertyMArea { get; set; }
    [IgnoreOnExport]
    public string CreatedBy { get; set; }
    [IgnoreOnExport]
    public DateTime CreatedAt { get; set; }
    [IgnoreOnExport]
    public string? ModifiedBy { get; set; }
    [IgnoreOnExport]
    public DateTime? ModifiedAt { get; set; }
    [IgnoreOnExport]
    public bool IsDeleted { get; set; } = false;
    [IgnoreOnExport]
    public string? DeletedBy { get; set; }
    [IgnoreOnExport]
    public DateTime? DeletedAt { get; set; }
}