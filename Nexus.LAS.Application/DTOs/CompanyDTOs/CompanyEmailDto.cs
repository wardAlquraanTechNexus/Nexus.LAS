namespace Nexus.LAS.Application.DTOs.CompanyEmailDTOs;

public class CompanyEmailDto
{
    public int Id { get; set; }
    public string Email { get; set; }
    public bool EmailPrimary { get; set; }
    public int CompanyId { get; set; }

}
