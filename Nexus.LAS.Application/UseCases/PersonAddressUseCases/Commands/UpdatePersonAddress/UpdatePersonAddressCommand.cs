// UpdatePersonAddressCommand.cs
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.PersonAddressUseCases.Commands.UpdatePersonAddress;

public class UpdatePersonAddressCommand : UpdateBaseCommand
{
    public int Id { get; set; }
    public int? PersonsIdn { get; set; }
    public bool? AddressPrimary { get; set; }
    public string? AddressType { get; set; }
    public string? AddressNumber { get; set; }
}