using Nexus.LAS.Domain.Entities.Base;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Domain.Entities.PersonEntities
{
    [Table("Persons")]

    public class Person : BaseEntity
    {
        [Column("PersonIDC", Order = 0)]
        public string PersonIdc { get; set; } = null!; // PP

        [Key, Column("PersonIDN", Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public override int Id { get; set; }

        [Required, Column("PersonCode")]
        public string PersonCode { get; set; } = null!;

        [Column("PersonEnglishName")]
        public string? PersonEnglishName { get; set; }

        [Column("PersonArabicName")]
        public string? PersonArabicName { get; set; }

        [Column("PersonShortName")]
        public string? PersonShortName { get; set; }

        [Column("Website")]
        public string? Website { get; set; }

        [Required, Column("PersonStatus")]
        public string PersonStatus { get; set; } = null!;

        [Required, Column("Private")]
        public bool Private { get; set; }
    }
}
