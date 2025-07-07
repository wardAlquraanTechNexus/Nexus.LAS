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

    [Table("PersonsEmails")]
    public class PersonsEmail : BaseEntity
    {
        [Key, Column("PersonsEmailIDC", Order = 0)]
        public string PersonsEmailIdc { get; set; } = null!;

        [Key, Column("PersonsEmailIDN", Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int PersonsEmailIdn { get; set; }

        [Column("Persons_IDN")]
        public int PersonsIdn { get; set; }

        [Required, Column("EmailPrimary")]
        public bool EmailPrimary { get; set; }

        [Required, Column("Email")]
        [MaxLength(150)]
        public string Email { get; set; } = null!;
    }
}
