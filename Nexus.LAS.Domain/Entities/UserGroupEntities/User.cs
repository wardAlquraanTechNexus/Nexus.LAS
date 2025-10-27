using Nexus.LAS.Domain.Entities.Base;
using Nexus.LAS.Domain.Entities.PersonEntities;
using System.ComponentModel.DataAnnotations.Schema;

namespace Nexus.LAS.Domain.Entities.UserGroupEntities;

[Table("Users")]
public class User : BaseEntity
{
    public string Username { get; set; }

    [Column("NTLogin")]
    public string? NTLogin { get; set; }
    
    [Column("Persons_IDN")]
    public int? PersonsIdN { get; set; }
    [ForeignKey(nameof(PersonsIdN))]
    public Person? Person { get; set; }
}
