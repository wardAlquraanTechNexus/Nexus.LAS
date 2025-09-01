// UpdateCompanyOtherContractCommand.cs
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.CompanyOtherContractUseCases.Commands.UpdateCompanyOtherContract;

public class UpdateCompanyOtherContractCommand : UpdateBaseCommand
{
    public int Id { get; set; }
    public int CompaniesIdn { get; set; }
    public DateTime? ContractDate { get; set; }
    public string? ContractDescription { get; set; }
}