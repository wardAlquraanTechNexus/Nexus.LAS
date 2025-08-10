namespace Nexus.LAS.Application.DTOs.CompanyLicenseDTOs;

public class CompanyLicenseDto
{
    public int Id { get; set; }
    public bool LicensePrimary { get; set; }
    public string LicenseStatus { get; set; }
    public string LicenseClassification { get; set; }
    public string LicenseNumber { get; set; }
    public DateTime LicenseIssueDate { get; set; }
    public DateTime? LicenseExpiryDate { get; set; }
    public bool? LicenseExpiryActiveReminder { get; set; }
    public string? CreatedBy { get; set; }
    public DateTime? CreatedAt { get; set; }
    public string? ModifiedBy { get; set; }
    public DateTime? ModifiedAt { get; set; }
    public int CompaniesIdn { get; set; }

}
