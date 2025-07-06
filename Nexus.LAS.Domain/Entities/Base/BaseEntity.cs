using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Domain.Entities.Base
{
    public abstract class BaseEntity
    {
        [Column("CreatedBy_IDN")]
        public int CreatedByIdN { get; set; }
        [Column("CreatedBy_Name")]
        public string CreatedByName { get; set; }
        [Column("CreatedBy_Date")]
        public DateTime CreatedByDate { get; set; }
        [Column("UpdatedBy_IDN")]
        public int? UpdatedByIdN { get; set; }
        [Column("UpdatedBy_Name")]
        public string? UpdatedByName { get; set; }
        [Column("UpdatedBy_Date")]
        public DateTime? UpdatedByDate { get; set; }
    }
}
