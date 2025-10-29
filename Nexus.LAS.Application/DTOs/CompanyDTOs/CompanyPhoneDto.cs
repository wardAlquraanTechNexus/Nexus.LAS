namespace Nexus.LAS.Application.DTOs.CompanyPhoneDTOs;

public class CompanyPhoneDto
{
    public int? Id { get; set; }
    public int? CompanyId { get; set; }
    public bool? PhonePrimary { get; set; }
    public string? PhoneType { get; set; }
    public string? PhoneNumber { get; set; }
    public string? PhoneNumberNote { get; set; }

}
