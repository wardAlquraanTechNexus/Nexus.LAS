using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using System;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyUseCases.Commands.CreateProperty;

public class CreatePropertyCommand : CreateBaseCommand
{
    public string PropertyCode { get; set; } = null!;
    public string? PropertiesTypeOfTitle { get; set; }
    public bool? PropertiesGrantor { get; set; }
    public string? PropertiesGrantorAddress { get; set; }
    public DateTime? PropertiesGrantorTitleCommencementDate { get; set; }
    public DateTime? PropertiesGrantorTitleExpiryDate { get; set; }
    public bool? PropertiesGrantorTitleExpiryActiveReminder { get; set; }
    public string? PropertiesGrantorDescription { get; set; }
    public string? PropertiesLocationCountryIdn { get; set; }
    public string? PropertiesLocationCountry { get; set; }
    public string? PropertiesLocationCityIdn { get; set; }
    public string? PropertiesLocationCity { get; set; }
    public string? PropertiesLocationAreaIdn { get; set; }
    public string? PropertiesLocationArea { get; set; }
    public string? PropertiesLocationDetails { get; set; }
    public string? PropertiesType { get; set; }
    public string? PropertiesPurpose { get; set; }
    public string? PropertiesStatus { get; set; }
    public string PropertyStatus { get; set; } = null!;
    public bool Private { get; set; }
    public string? PropertiesPlot { get; set; }
    public string? FArea { get; set; }
    public string? MArea { get; set; }
    public string? PropertyFArea { get; set; }
    public string? PropertyMArea { get; set; }
}