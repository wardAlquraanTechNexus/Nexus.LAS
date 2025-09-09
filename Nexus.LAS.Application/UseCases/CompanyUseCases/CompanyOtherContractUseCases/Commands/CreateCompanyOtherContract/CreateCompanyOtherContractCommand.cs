// CreateCompanyOtherContractCommand.cs
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.CompanyOtherContractUseCases.Commands.CreateCompanyOtherContract;

public class CreateCompanyOtherContractCommand : CreateBaseCommand
{
    public int CompanyId { get; set; }
    public DateTime? ContractDate { get; set; }
    public string? ContractDescription { get; set; }
}