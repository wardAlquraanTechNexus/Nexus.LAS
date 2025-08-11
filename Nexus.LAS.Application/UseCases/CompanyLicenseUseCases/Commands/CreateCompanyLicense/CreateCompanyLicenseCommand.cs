// CreateCompanyLicenseCommand.cs
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.CompanyLicenseUseCases.Commands.CreateCompanyLicense;

public class CreateCompanyLicenseCommand : CreateBaseCommand
{
    public int CompaniesIdn { get; set; }
    public bool LicensePrimary { get; set; }
    public string LicenseStatus { get; set; } = null!;
    public string LicenseClassification { get; set; } = null!;
    public string LicenseNumber { get; set; } = null!;
    public DateTime LicenseIssueDate { get; set; }
    public DateTime? LicenseExpiryDate { get; set; }
    public bool? LicenseExpiryActiveReminder { get; set; }
}