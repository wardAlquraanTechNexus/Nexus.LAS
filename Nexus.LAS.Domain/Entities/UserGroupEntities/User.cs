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
    [Table("Users")]
    public class User : BaseEntity
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("id")]
        public int Id { get; set; }

        [Column("LoginName")]
        public string LoginName { get; set; }

        [Column("NTLogin")]
        public string NTLogin { get; set; }

        [Column("Persons_IDN")]
        public int? PersonsIdN { get; set; }
    }
}
