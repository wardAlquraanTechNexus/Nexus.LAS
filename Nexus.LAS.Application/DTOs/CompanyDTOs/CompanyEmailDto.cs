namespace Nexus.LAS.Application.DTOs.CompanyEmailDTOs;

public class CompanyEmailDto
{
    public int Id { get; set; }
    public string Email { get; set; }
    public bool EmailPrimary { get; set; }
    public string? CreatedBy { get; set; }
    public DateTime? CreatedAt { get; set; }
    public string? ModifiedBy { get; set; }
    public DateTime? ModifiedAt { get; set; }
    public int CompaniesIdn { get; set; }

}
