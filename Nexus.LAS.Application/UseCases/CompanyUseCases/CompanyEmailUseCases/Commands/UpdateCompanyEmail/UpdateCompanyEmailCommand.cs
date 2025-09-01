// UpdateCompanyEmailCommand.cs
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.CompanyEmailUseCases.Commands.UpdateCompanyEmail;

public class UpdateCompanyEmailCommand : UpdateBaseCommand
{
    public int Id { get; set; }
    public string Email { get; set; }
    public bool EmailPrimary { get; set; }
    public int CompanyId { get; set; }
}