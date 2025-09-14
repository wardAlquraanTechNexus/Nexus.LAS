namespace Nexus.LAS.Application.DTOs.PropertyDTOs;

public class PropertyDto
{
    public int Id { get; set; }
    public string PropertyCode { get; set; } = null!;
    public string? PropertyTypeOfTitle { get; set; }
    public bool? PropertyGrantor { get; set; }
    public string? PropertyGrantorAddress { get; set; }
    public DateTime? PropertyGrantorTitleCommencementDate { get; set; }
    public DateTime? PropertyGrantorTitleExpiryDate { get; set; }
    public bool? PropertyGrantorTitleExpiryActiveReminder { get; set; }
    public string? PropertyGrantorDescription { get; set; }

    public string? PropertyLocationCountryIdn { get; set; }
    public string? PropertyLocationCountry { get; set; }
    public string? PropertyLocationCityIdn { get; set; }
    public string? PropertyLocationCity { get; set; }
    public string? PropertyLocationAreaIdn { get; set; }
    public string? PropertyLocationArea { get; set; }
    public string? PropertyLocationDetails { get; set; }

    public string? PropertyType { get; set; }
    public string? PropertyPurpose { get; set; }
    public string PropertyStatus { get; set; }
    public bool Private { get; set; }

    public string? PropertyPlot { get; set; }
    public string? FArea { get; set; }
    public string? MArea { get; set; }
    public string? PropertyFArea { get; set; }
    public string? PropertyMArea { get; set; }
}