// UpdatePersonPhoneCommand.cs
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.PersonPhoneUseCases.Commands.UpdatePersonPhone;

public class UpdatePersonPhoneCommand : UpdateBaseCommand
{
    public int Id { get; set; }
    public int PersonsIdn { get; set; }
    public bool PhonePrimary { get; set; }
    public int? PhoneType { get; set; }
    public string PhoneNumber { get; set; }
    public string? PhoneNumberNote { get; set; }
}