// CreateCompanyEmailCommand.cs
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.CompanyEmailUseCases.Commands.CreateCompanyEmail;

public class CreateCompanyEmailCommand : CreateBaseCommand
{
    public string Email { get; set; }
    public bool EmailPrimary { get; set; }
    public int CompanyId { get; set; }
}