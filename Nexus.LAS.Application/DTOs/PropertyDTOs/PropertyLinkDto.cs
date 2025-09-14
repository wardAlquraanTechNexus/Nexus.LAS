namespace Nexus.LAS.Application.DTOs.PropertyDTOs;

public class PropertyLinkDto
{
    public int Id { get; set; }
    public string RegistersIdc { get; set; } = null!;
    public int RegistersIdn { get; set; }
    public string PropertyLinksValue { get; set; }
    public string? PropertyLinksRemarks { get; set; }


}