using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Entities.Base;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Nexus.LAS.Domain.Entities.CompanyEntities;

[Table("CompaniesActivities")]

public class CompanyActivity:BaseEntity
{
    [Required]
    [MaxLength(50)]
    [Column("CompaniesActivityIDC")]
    public string CompaniesActivityIdc { get; set; } = EntityIDCs.CompaniesActivities;
    [Key]
    [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    [Column("CompaniesActivityIDN")]
    public override int Id { get; set; }

    [Required]
    [Column("Companies_IDN")]
    public int CompanyId { get; set; }

    [Required]
    [Column("Activity")]
    public string Activity { get; set; }
}
