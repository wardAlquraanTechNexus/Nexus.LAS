using Nexus.LAS.Domain.Entities.Base;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Domain.Entities.UserGroupEntities
{
    [Table("UserGroups")]
    public class UserGroup:BaseEntity
    {
        [NotMapped]
        public override int Id { get; set; }

        [Key]
        [Column("UserId", Order = 0)]
        public int UserId { get; set; }

        [Key]
        [Column("GroupId", Order = 1)]
        public int GroupId { get; set; }
    }
}
