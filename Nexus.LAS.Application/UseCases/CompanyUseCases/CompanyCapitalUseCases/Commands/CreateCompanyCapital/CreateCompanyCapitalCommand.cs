// CreateCompanyCapitalCommand.cs
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.CompanyCapitalUseCases.Commands.CreateCompanyCapital;

public class CreateCompanyCapitalCommand : CreateBaseCommand
{
    public int CompanyId { get; set; }
    public DateTime? CapitalDate { get; set; }
    public double? CapitalAmount { get; set; }
    public double? NominalValueOfShare { get; set; }
    public string ClassOfShares { get; set; }
    public long? NumberOfShares { get; set; }
    public int? NumberOfPartners { get; set; }
    public double? CapitalAuthorized { get; set; }
    public double? CapitalPaid { get; set; }
    public long? IssuedShares { get; set; }
    public int CapitalCurrency { get; set; }
    public bool CapitalActive { get; set; }
}