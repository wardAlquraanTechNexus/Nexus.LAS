// UpdateCompanyContractCommand.cs
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.CompanyContractUseCases.Commands.UpdateCompanyContract;

public class UpdateCompanyContractCommand : UpdateBaseCommand
{
    public int Id { get; set; }
    public int CompaniesIdn { get; set; }
    public string? ContractType { get; set; }
    public DateTime? DocumentDate { get; set; }
    public DateTime? CommencementDate { get; set; }
    public DateTime? ContractExpiryDate { get; set; }
    public bool? ContractExpiryActiveReminder { get; set; }
    public string? ContractDescription { get; set; }
    public string? ContractStatus { get; set; }
}