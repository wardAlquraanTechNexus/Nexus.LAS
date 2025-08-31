using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.CompanyActivityUseCases.Commands.CreateCompanyActivity;

public class CreateCompanyActivityCommand : CreateBaseCommand
{
    public int Activity { get; set; }
    public int CompanyId { get; set; }
}