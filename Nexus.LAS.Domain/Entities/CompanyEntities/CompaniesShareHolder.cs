using Nexus.LAS.Domain.Entities.Base;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Nexus.LAS.Domain.Entities.CompanyEntities
{
    [Table("CompaniesShareHolders")]

    public class CompaniesShareHolder:BaseEntity
    {
        [Required]
        [MaxLength(50)]
        [Column("CompaniesShareHolderIDC")]
        public string CompaniesShareHolderIdc { get; set; }
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("CompaniesShareHolderIDN")]
        public override int Id { get; set; }

        [Column("CompaniesShareHoldersGroups_IDN")]
        public int? CompaniesShareHoldersGroupsIdn { get; set; }

        [Required]
        [MaxLength(50)]
        [Column("Registers_IDC")]
        public string RegistersIdc { get; set; } // Person or company

        [Required]
        [Column("Registers_IDN")]
        public int RegistersIdn { get; set; } //List of person or companies

        [Column("ShareHolderNumbersOfShares")]
        public long? ShareHolderNumbersOfShares { get; set; }

        [Column("ShareHolderDate")]
        public DateTime? ShareHolderDate { get; set; }
        [Column("ShareHolderCessationDate")]
        public DateTime? ShareHolderCessationDate { get; set; }

        [Column("ShareHolderActive")]
        public bool? ShareHolderActive { get; set; }

        [Required]
        [Column("Companies_IDN")]
        public int CompaniesIdn { get; set; }
    }
}
