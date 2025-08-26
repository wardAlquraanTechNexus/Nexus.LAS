using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.CompanyActivityUseCases.Commands.UpdateCompanyActivity;

public class UpdateCompanyActivityCommand : UpdateBaseCommand
{
    public int Id { get; set; }
    public int Activity { get; set; }
    public int CompanyId { get; set; }
}