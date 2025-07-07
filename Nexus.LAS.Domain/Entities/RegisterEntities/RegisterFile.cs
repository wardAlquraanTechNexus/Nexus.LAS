using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Domain.Entities.RegisterEntities
{
    [Table("tblFiles")]
    public class RegisterFile
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("FileID")]
        public int FileId { get; set; }

        [Column("Registers_IDC")]
        public string RegistersIdc { get; set; } = null!;

        [Column("Registers_IDN")]
        public int RegistersIdn { get; set; }

        [Column("Name")]
        public string Name { get; set; } = null!;

        [Column("ContentType")]
        public string? ContentType { get; set; }

        [Column("Data")]
        public byte[]? Data { get; set; }
    }
}
