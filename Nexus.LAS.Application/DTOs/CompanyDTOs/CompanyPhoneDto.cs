namespace Nexus.LAS.Application.DTOs.CompanyPhoneDTOs;

public class CompanyPhoneDto
{
    public int? Id { get; set; }
    public int? CompaniesIdn { get; set; }

    public bool? PhonePrimary { get; set; }
    public int? PhoneType { get; set; }
    public string? PhoneNumber { get; set; }
    public string? CreatedBy { get; set; }
    public DateTime? CreatedAt { get; set; }
    public string? ModifiedBy { get; set; }
    public DateTime? ModifiedAt { get; set; }

}
