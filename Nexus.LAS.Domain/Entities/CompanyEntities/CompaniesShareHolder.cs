using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Entities.Base;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Nexus.LAS.Domain.Entities.CompanyEntities
{
    [Table("CompaniesShareHolders")]

    public class CompanyShareHolder:BaseEntity
    {
        [Required]
        [MaxLength(50)]
        [Column("CompaniesShareHolderIDC")]
        public string CompanyShareHolderIdc { get; set; } = EntityIDCs.CompaniesShareHolderIDC;
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("CompaniesShareHolderIDN")]
        public override int Id { get; set; }

        [Column("CompaniesShareHoldersGroups_IDN")]
        public int? ShareHoldersGroupsId { get; set; }

        [Required]
        [MaxLength(50)]
        [Column("Registers_IDC")]
        public string RegistersIdc { get; set; } // Person or company

        [Required]
        [Column("Registers_IDN")]
        public int RegistersIdn { get; set; } //List of person or companies

        [Column("ShareHolderNumbersOfShares")]
        public long? NumbersOfShares { get; set; }

        [Column("ShareHolderDate")]
        public DateTime? ShareHolderDate { get; set; }
        [Column("ShareHolderCessationDate")]
        public DateTime? CessationDate { get; set; }

        [Column("ShareHolderActive")]
        public bool? ShareHolderActive { get; set; }

        [Required]
        [Column("Companies_IDN")]
        public int CompanyId { get; set; }
    }
}
