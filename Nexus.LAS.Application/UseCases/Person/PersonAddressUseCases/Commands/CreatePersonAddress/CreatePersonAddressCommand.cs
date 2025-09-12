// CreatePersonAddressCommand.cs
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.PersonAddressUseCases.Commands.CreatePersonAddress;

public class CreatePersonAddressCommand : CreateBaseCommand
{
    public int PersonsIdn { get; set; }

    public bool AddressPrimary { get; set; }
    public string AddressLine1 { get; set; } = null!;
    public string? AddressLine2 { get; set; }
    public string? AddressLine3 { get; set; }
    public string? POBoxNumber { get; set; }
    public int? POBoxCity { get; set; }
    public int? POBoxCountry { get; set; }

}