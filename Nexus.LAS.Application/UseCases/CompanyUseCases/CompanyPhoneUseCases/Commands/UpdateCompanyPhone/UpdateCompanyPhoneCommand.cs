// UpdateCompanyPhoneCommand.cs
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using System.ComponentModel.DataAnnotations;

namespace Nexus.LAS.Application.UseCases.CompanyPhoneUseCases.Commands.UpdateCompanyPhone;

public class UpdateCompanyPhoneCommand : UpdateBaseCommand
{
    public int Id { get; set; }
    public int CompanyId { get; set; }
    public bool PhonePrimary { get; set; }
    public string PhoneType { get; set; }
    [MinLength(6)]
    [MaxLength(14)]
    public string PhoneNumber { get; set; }
}