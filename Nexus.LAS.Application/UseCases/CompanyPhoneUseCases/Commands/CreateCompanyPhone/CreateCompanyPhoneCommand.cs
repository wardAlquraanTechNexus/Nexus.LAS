// CreateCompanyPhoneCommand.cs
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.CompanyPhoneUseCases.Commands.CreateCompanyPhone;

public class CreateCompanyPhoneCommand : CreateBaseCommand
{
    public int? CompaniesIdn { get; set; }
    public bool? PhonePrimary { get; set; }
    public string? PhoneType { get; set; }
    public string? PhoneNumber { get; set; }
}