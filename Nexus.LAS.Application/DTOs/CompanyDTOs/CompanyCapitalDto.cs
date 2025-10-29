using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Nexus.LAS.Application.DTOs.CompanyCapitalDTOs;

public class CompanyCapitalDto
{
    public int Id { get; set; }
    public int CompanyId { get; set; }
    public DateTime? CapitalDate { get; set; }
    public double? CapitalAmount { get; set; }
    public double? NominalValueOfShare { get; set; }
    public string? ClassOfShares { get; set; }
    public long? NumberOfShares { get; set; }
    public int? NumberOfPartners { get; set; }
    public double? CapitalAuthorized { get; set; }
    public double? CapitalPaid { get; set; }
    public long? IssuedShares { get; set; }
    public int CapitalCurrency { get; set; }
    public bool CapitalActive { get; set; }

}
