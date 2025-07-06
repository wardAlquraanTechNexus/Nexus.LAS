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
    public class DocumentReletedRegister
    {
        [Key]
        [Column("Document_IDC")]
        [MaxLength(50)]
        public string DocumentIdc { get; set; }

        [Key]
        [Column("Document_IDN")]
        public int DocumentIdn { get; set; }

        [Key]
        [Column("Registers_IDC")]
        [MaxLength(50)]
        public string RegistersIdc { get; set; }

        [Key]
        [Column("Registers_IDN")]
        public int RegistersIdn { get; set; }

        [Key]
        [Column("Owner")]
        public bool Owner { get; set; }
    }
}
