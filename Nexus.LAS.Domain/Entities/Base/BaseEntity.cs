using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Nexus.LAS.Domain.Entities.Base;

public abstract class BaseEntity
{
    [Key]
    [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    [Column("id")]
    public virtual int Id { get; set; }
    public string CreatedBy { get; set; }
    public DateTime CreatedAt { get; set; }
    public string? ModefiedBy{ get; set; }
    public DateTime? ModifiedAt { get; set; }
    public bool IsDeleted { get; set; } = false;
    public string? DeletedBy { get; set; }
    public DateTime? DeletedAt { get; set; }
}
