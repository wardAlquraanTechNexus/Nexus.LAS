using Nexus.LAS.Domain.CommonAttributes;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Nexus.LAS.Domain.Entities.Base;

public abstract class BaseEntity
{
    [Key]
    [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    [Column("id")]
    public virtual int Id { get; set; }
    [IgnoreOnExport]
    public string CreatedBy { get; set; }
    [IgnoreOnExport]
    public DateTime CreatedAt { get; set; }
    [IgnoreOnExport]
    public string? ModifiedBy{ get; set; }
    [IgnoreOnExport]
    public DateTime? ModifiedAt { get; set; }
    [IgnoreOnExport]
    public bool IsDeleted { get; set; } = false;
    [IgnoreOnExport]
    public string? DeletedBy { get; set; }
    [IgnoreOnExport]
    public DateTime? DeletedAt { get; set; }
}
