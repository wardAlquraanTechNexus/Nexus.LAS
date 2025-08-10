using Nexus.LAS.Domain.Entities.Base;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Nexus.LAS.Domain.Entities.CompanyEntities;

[Table("Companies")]

public class Company:BaseEntity
{
    [Required]
    [MaxLength(50)]
    public string CompanyIdc { get; set; }

    [Key]
    [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    [Column("CompanyIdn ")]
    public override int Id { get; set; }

    [Required]
    [MaxLength(50)]
    public string CompanyCode { get; set; }

    public DateTime? IncorporationDate { get; set; }

    [Required]
    [MaxLength(100)]
    public string CompanyEnglishName { get; set; }

    [Required]
    [MaxLength(100)]
    public string CompanyArabicName { get; set; }

    [Required]
    [MaxLength(50)]
    public string CompanyShortName { get; set; }

    [MaxLength(50)]
    public string CompanyTypeIdn { get; set; }

    [MaxLength(50)]
    public string CompanyType { get; set; }

    [MaxLength(50)]
    public string CompanyClassIdn { get; set; }

    [MaxLength(50)]
    public string CompanyClass { get; set; }

    [MaxLength(50)]
    public string GroupCompany { get; set; }

    [MaxLength(50)]
    public string RelevantCompany { get; set; }

    [MaxLength(50)]
    public string LegalType { get; set; }

    [MaxLength(50)]
    public string CciNumber { get; set; }

    public DateTime? CciIssueDate { get; set; }

    public DateTime? CciExpiryDate { get; set; }

    public bool? CciExpiryActiveReminder { get; set; }

    [MaxLength(50)]
    public string PlaceOfRegistrationMainIdn { get; set; }

    [MaxLength(50)]
    public string PlaceOfRegistrationMain { get; set; }

    [MaxLength(50)]
    public string PlaceOfRegistrationSubIdn { get; set; }

    [MaxLength(50)]
    public string PlaceOfRegistrationSub { get; set; }

    public decimal? CapitalAmount { get; set; }

    public long? TotalShares { get; set; }

    public int? NumberOfPartners { get; set; }

    public DateTime? UpdateDate { get; set; }

    [MaxLength(50)]
    public string UpdateDescription { get; set; }

    [Column("Persons_IDN")]
    public int? PersonsIdn { get; set; }

    [Required]
    public int? CompanyStatus { get; set; }

    [Required]
    public bool Private { get; set; }
}
