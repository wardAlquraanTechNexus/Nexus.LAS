using Nexus.LAS.Domain.Constants.Enums;

namespace Nexus.LAS.Application.DTOs.PropertyDTOs;

public class PropertyLinkDto
{
    public int Id { get; set; }
    public string RegisterIdc { get; set; }
    public int RegisterIdn { get; set; }
    public int PropertyLinksValue { get; set; }
    public string? PropertyLinksRemarks { get; set; }
    public string? LocationDetails { get; set; }
    public CommonStatus PropertyLinkedStatus { get; set; }
    public string PropertyLinkedCode { get; set; }


}