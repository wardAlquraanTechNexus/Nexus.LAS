﻿using Nexus.LAS.Domain.Entities.Base;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Domain.Entities.RegisterEntities
{
    [Table("RegistersCodes")]
    public class RegistersCode:BaseEntity
    {
        [NotMapped]
        public override int Id { get; set; }

        [Key]
        public string Code { get; set; } = null!;

        public int CodeCounter { get; set; }
    }
}
