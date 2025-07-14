using Nexus.LAS.Domain.Entities.Base;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Domain.Entities.RegisterEntities
{
    [Table("RegistersNotes")]
    public class RegistersNote : BaseEntity
    {
        [Column("RegistersNoteIDC", Order = 0)]
        public string RegistersNoteIdc { get; set; } = null!;

        [Key, Column("RegistersNoteIDN", Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]

        public override int Id { get; set; }

        [Column("Registers_IDC")]
        public string RegistersIdc { get; set; } = null!;

        [Column("Registers_IDN")]
        public int RegistersIdn { get; set; }

        [Column("RegistersNotes")]
        public string RegistersNotesText { get; set; } = null!;

        [Column("NoteDate")]
        public DateTime NoteDate { get; set; }
    }
}
