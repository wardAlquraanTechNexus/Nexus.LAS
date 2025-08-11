// UpdateCompanyPhoneCommand.cs
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.CompanyPhoneUseCases.Commands.UpdateCompanyPhone;

public class UpdateCompanyPhoneCommand : UpdateBaseCommand
{
    public int Id { get; set; }
    public int? CompaniesIdn { get; set; }
    public bool? PhonePrimary { get; set; }
    public string? PhoneType { get; set; }
    public string? PhoneNumber { get; set; }
}