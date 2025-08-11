// UpdateCompanyCapitalCommand.cs
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.CompanyCapitalUseCases.Commands.UpdateCompanyCapital;

public class UpdateCompanyCapitalCommand : UpdateBaseCommand
{
    public int Id { get; set; }
    public int CompaniesIdn { get; set; }
    public DateTime? CompaniesCapitalDate { get; set; }
    public double? CompaniesCapitalAmount { get; set; }
    public double? NominalValueOfShare { get; set; }
    public string? ClassOfSahres { get; set; }
    public long? CompaniesCapitalNumberOfShares { get; set; }
    public double? CompaniesCapitalAuthorized { get; set; }
    public double? CompaniesCapitalPaid { get; set; }
    public long? CompaniesCapitalIssuedShares { get; set; }
    public string? CompaniesCapitalCurrency { get; set; }
    public bool CompaniesCapitalActive { get; set; }
}