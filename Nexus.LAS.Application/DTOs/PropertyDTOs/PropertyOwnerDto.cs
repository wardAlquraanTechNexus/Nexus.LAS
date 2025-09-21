namespace Nexus.LAS.Application.DTOs.PropertyDTOs;

public class PropertyOwnerDto
{
    public int Id { get; set; }
    public int PropertyId { get; set; }
    public string RegisterIdc { get; set; }
    public int RegisterIdn { get; set; }
    public int? Relation { get; set; }
    public DateTime? OwnStartDate { get; set; }
    public DateTime? OwnFinishDate { get; set; }
    public bool? OwnActive { get; set; }
    public string? Remarks { get; set; }

}