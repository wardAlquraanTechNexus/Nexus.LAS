using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Entities.Base;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Nexus.LAS.Domain.Entities.CompanyEntities;

[Table("CompaniesCapitals")]

public class CompanyCapital:BaseEntity
{
    public string CompaniesCapitalIdc { get; set; } = EntityIDCs.CompaniesCapitalIDC;
    [Key]
    [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    [Column("CompaniesCapitalIDN")]
    public override int Id { get; set; }

    [Required]
    [Column("Companies_IDN")]
    public int CompanyId { get; set; }

    [Column("CompaniesCapitalDate")]
    public DateTime? CapitalDate { get; set; }

    [Column("CompaniesCapitalAmount")]
    public double? CapitalAmount { get; set; }

    [Column("NominalValueOfShare")]
    public double? NominalValueOfShare { get; set; }

    [MaxLength(50)]
    public string? ClassOfShares { get; set; }

    [Column("CompaniesCapitalNumberOfShares")]
    public long? NumberOfShares { get; set; }

    [Column("CompaniesCapitalNumberOfPartners")]
    public int? NumberOfPartners { get; set; }

    [Column("CompaniesCapitalAuthorized")]
    public double? CapitalAuthorized { get; set; }

    [Column("CompaniesCapitalPaid")]
    public double? CapitalPaid { get; set; }

    [Column("CompaniesCapitalIssuedShares")]
    public long? IssuedShares { get; set; }

    [Column("CompaniesCapitalCurrency")]
    public int CapitalCurrency { get; set; }

    [Required]
    [Column("CompaniesCapitalActive")]
    public bool CapitalActive { get; set; }
}
