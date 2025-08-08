using Nexus.LAS.Domain.Entities.Base;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Domain.Entities.CompanyEntities
{
    [Table("CompaniesPersonInCharges")]
    //Person Contact
    public class CompaniesPersonInCharge:BaseEntity
    {
        [Required]
        [MaxLength(50)]
        [Column("CompaniesPersonInChargeIDC")]
        public string CompaniesPersonInChargeIdc { get; set; }
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("CompaniesPersonInChargeIDN")]
        public override int Id { get; set; }

        [Required]
        [Column("Companies_IDN")]
        public int CompaniesIdn { get; set; }

        [Required]
        [Column("Persons_IDN")]
        public int PersonsIdn { get; set; }

        [MaxLength(50)]
        [Column("Designation")]
        public string Designation { get; set; }

        [MaxLength(4000)]
        [Column("Notes")]
        public string Notes { get; set; }

        [Column("PersonInChargeDate")]
        public DateTime? PersonInChargeDate { get; set; }

        [Column("PersonInChargeActive")]
        public bool? PersonInChargeActive { get; set; }
    }
}
