// CreateCompanyPhoneCommand.cs
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using System.ComponentModel.DataAnnotations;

namespace Nexus.LAS.Application.UseCases.CompanyPhoneUseCases.Commands.CreateCompanyPhone;

public class CreateCompanyPhoneCommand : CreateBaseCommand
{
    public int CompanyId { get; set; }
    public bool PhonePrimary { get; set; }
    public string PhoneType { get; set; }
    [MinLength(6)]
    [MaxLength(14)]
    public string PhoneNumber { get; set; }
}