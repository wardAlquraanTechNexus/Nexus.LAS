using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Nexus.LAS.Application.DTOs.CompanyCapitalDTOs;

public class CompanyCapitalDto
{
    public int Id { get; set; }
    public DateTime? CompaniesCapitalDate { get; set; }
    public double? CompaniesCapitalAmount { get; set; }
    public double? NominalValueOfShare { get; set; }
    public string ClassOfSahres { get; set; }
    public long? CompaniesCapitalNumberOfShares { get; set; } //must great or equal the total of number of shareheloder linked to it
    public double? CompaniesCapitalAuthorized { get; set; }
    public double? CompaniesCapitalPaid { get; set; }
    public long? CompaniesCapitalIssuedShares { get; set; }
    public string CompaniesCapitalCurrency { get; set; }
    public bool CompaniesCapitalActive { get; set; }
    public string? CreatedBy { get; set; }
    public DateTime? CreatedAt { get; set; }
    public string? ModifiedBy { get; set; }
    public DateTime? ModifiedAt { get; set; }
    public int CompaniesIdn { get; set; }

}
