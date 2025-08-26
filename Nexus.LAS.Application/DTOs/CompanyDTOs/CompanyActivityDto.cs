namespace Nexus.LAS.Application.DTOs.CompanyActivityDTOs;

public class CompanyActivityDto
{
    public int Id { get; set; }
    public int Activity { get; set; }
    public int CompanyId { get; set; }
    public DateTime CreatedAt { get; set; }
    public DateTime? ModifiedAt { get; set; }

}
