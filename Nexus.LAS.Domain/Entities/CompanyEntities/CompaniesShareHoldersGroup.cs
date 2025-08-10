using Nexus.LAS.Domain.Entities.Base;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Nexus.LAS.Domain.Entities.CompanyEntities
{
    [Table("CompaniesShareHoldersGroups")]

    public class CompaniesShareHoldersGroup:BaseEntity
    {
        [Required]
        [MaxLength(50)]
        [Column("CompaniesShareHoldersGroupIDC")]
        public string CompaniesShareHoldersGroupIdc { get; set; }
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("CompaniesShareHoldersGroupIDN")]
        public override int Id { get; set; }

        [Required]
        [Column("Companies_IDN")]
        public int CompaniesIdn { get; set; }

        [Required]
        [Column("ShareHolderGroupDate")]
        public DateTime ShareHolderGroupDate { get; set; }

        [Required]
        [Column("ShareHolderGroupActive")]
        public bool ShareHolderGroupActive { get; set; }

    }
}
