using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.CompanyAddressUseCases.Commands.CreateCompanyAddress;

public class CreateCompanyAddressCommand : CreateBaseCommand
{
    public int CompaniesIdn { get; set; }
    public bool AddressPrimary { get; set; }
    public string AddressLine1 { get; set; } = null!;
    public string? AddressLine2 { get; set; }
    public string? AddressLine3 { get; set; }
    public string? PoBoxNumber { get; set; }
    public string? PoBoxCity { get; set; }
    public string? PoBoxCountry { get; set; }
}