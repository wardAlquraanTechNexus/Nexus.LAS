using Nexus.LAS.Domain.Constants.Enums;
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
    [Column("CompanyIdn")]
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
    public int? CompanyTypeIdn { get; set; }
    public int? CompanyClassIdn { get; set; }
    public int? GroupCompanyIdn { get; set; }
    public int? RelevantCompanyIdn { get; set; }
    public int? LegalTypeIdn { get; set; }
    public int? PlaceOfRegistrationMainIdn { get; set; }
    public int? PlaceOfRegistrationSubIdn { get; set; }
    [Required]
    public CommonStatus CompanyStatus { get; set; }
    [Required]
    public bool Private { get; set; }
}
