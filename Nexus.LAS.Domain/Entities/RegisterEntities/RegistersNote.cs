using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Entities.Base;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Nexus.LAS.Domain.Entities.RegisterEntities;

[Table("RegistersNotes")]
public class RegistersNote : BaseEntity
{
    [Column("RegistersNoteIDC", Order = 0)]
    [Key] // Add Key attribute here too
    [StringLength(50)] // Add length constraint
    public string RegistersNoteIdc { get; set; } = EntityIDCs.RegistersNote;

    [Key, Column("RegistersNoteIDN", Order = 1)]
    [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public override int Id { get; set; }

    [Column("Registers_IDC")]
    [Required] // Add Required attribute
    [StringLength(50)] // Add length constraint
    public string RegistersIdc { get; set; } = null!;

    [Column("Registers_IDN")]
    public int RegistersIdn { get; set; }

    [Column("RegistersNotes")]
    [Required] // Add Required attribute
    public string RegistersNotesText { get; set; } = null!;

    [Column("NoteDate")]
    public DateTime NoteDate { get; set; }
}
