using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.CompanyAddressUseCases.Commands.UpdateCompanyAddress;

public class UpdateCompanyAddressCommand : UpdateBaseCommand
{
    public int Id { get; set; }

    public int CompanyId { get; set; }

    public bool AddressPrimary { get; set; }

    public string AddressLine1 { get; set; }

    public string? AddressLine2 { get; set; }

    public string? AddressLine3 { get; set; }

    public string? PoBoxNumber { get; set; }

    public int? PoBoxCity { get; set; }

    public int PoBoxCountry { get; set; }
}