namespace Nexus.LAS.Application.DTOs.CompanyLicenseDTOs;

public class CompanyLicenseDto
{
    public int Id { get; set; }
    public int CompanyIdn { get; set; }
    public bool LicensePrimary { get; set; }
    public int LicenseStatus { get; set; }
    public string LicenseClassification { get; set; }
    public string LicenseNumber { get; set; }
    public DateTime LicenseIssueDate { get; set; }
    public DateTime? LicenseExpiryDate { get; set; }
    public bool LicenseExpiryActiveReminder { get; set; }

}
