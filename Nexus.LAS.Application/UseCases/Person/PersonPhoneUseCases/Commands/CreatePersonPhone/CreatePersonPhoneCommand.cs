// CreatePersonPhoneCommand.cs
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.PersonPhoneUseCases.Commands.CreatePersonPhone;

public class CreatePersonPhoneCommand : CreateBaseCommand
{
    public int? PersonsIdn { get; set; }
    public bool? PhonePrimary { get; set; }
    public int? PhoneType { get; set; }
    public string? PhoneNumber { get; set; }
}