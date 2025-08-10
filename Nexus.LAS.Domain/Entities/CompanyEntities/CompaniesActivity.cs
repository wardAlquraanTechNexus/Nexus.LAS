using Nexus.LAS.Domain.Entities.Base;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Nexus.LAS.Domain.Entities.CompanyEntities;

[Table("CompaniesActivities")]

public class CompaniesActivity:BaseEntity
{
    [Required]
    [MaxLength(50)]
    [Column("CompaniesActivityIDC")]
    public string CompaniesActivityIdc { get; set; }
    [Key]
    [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    [Column("CompaniesActivityIDN")]
    public override int Id { get; set; }

    [Required]
    [Column("Companies_IDN")]
    public int CompaniesIdn { get; set; }

    [Required]
    [Column("Activity")]
    public string Activity { get; set; }
}
