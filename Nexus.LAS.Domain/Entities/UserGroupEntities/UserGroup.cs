﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Domain.Entities.UserGroupEntities
{
    [Table("UserGroups")]
    public class UserGroup
    {
        [Key]
        [Column("UserId", Order = 0)]
        public int UserId { get; set; }

        [Key]
        [Column("GroupId", Order = 1)]
        public int GroupId { get; set; }
    }
}
