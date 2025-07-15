using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Domain.Entities.Base
{
    public abstract class BaseEntity
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("id")]
        public virtual int Id { get; set; }
        [Column("CreatedBy")]
        public string CreatedBy { get; set; }
        [Column("CreationDate")]
        public DateTime CreationDate { get; set; }
        [Column("UpdatedBy")]
        public string? ModefiedBy{ get; set; }
        [Column("Modification_Date")]
        public DateTime? ModificationDate { get; set; }
        public bool IsDeleted { get; set; } = false;
    }
}
