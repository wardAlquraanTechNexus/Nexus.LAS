using Nexus.LAS.Domain.Entities.Base;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Domain.Entities.DocumentEntities
{
    [Table("DocumentReletedRegister")]
    public class DocumentReletedRegister:BaseEntity
    {

        [Column("Document_IDC")]
        [MaxLength(50)]
        public string DocumentIdc { get; set; }
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Key]
        [Column("Document_IDN")]
        public override int Id { get; set; }

        [Column("Registers_IDC")]
        [MaxLength(50)]
        public string RegistersIdc { get; set; }

        [Column("Registers_IDN")]
        public int RegistersIdn { get; set; }

        [Column("Owner")]
        public bool Owner { get; set; }
    }
}
