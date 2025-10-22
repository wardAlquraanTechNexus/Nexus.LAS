// CreateCompanyLicenseCommand.cs
using Microsoft.AspNetCore.Http;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.CompanyLicenseUseCases.Commands.CreateCompanyLicense;

public class CreateCompanyLicenseCommand : CreateBaseCommand
{
    public int CompanyIdn { get; set; }
    public bool LicensePrimary { get; set; }
    public int LicenseStatus { get; set; }
    public int LicenseClassification { get; set; }
    public string LicenseNumber { get; set; }
    public DateTime LicenseIssueDate { get; set; }
    public DateTime? LicenseExpiryDate { get; set; }
    public bool LicenseExpiryActiveReminder { get; set; }
    public IFormFile? File { get; set; }
}