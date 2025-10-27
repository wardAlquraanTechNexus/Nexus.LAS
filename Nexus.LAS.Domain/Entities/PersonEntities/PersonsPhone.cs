using Nexus.LAS.Domain.Entities.Base;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Nexus.LAS.Domain.Entities.PersonEntities;

[Table("PersonsPhones")]
public class PersonsPhone : BaseEntity
{
    [Column("PersonsPhoneIDC", Order = 0)]
    public string? PersonsPhoneIdc { get; set; } = null!;

    [Key, Column("PersonsPhoneIDN", Order = 1)]
    [DatabaseGenerated(DatabaseGeneratedOption.Identity)]

    public override int Id { get; set; }

    [Column("Persons_IDN")]
    public int? PersonsIdn { get; set; }

    public bool? PhonePrimary { get; set; }

    [Column("PhoneType")]
    public int? PhoneType { get; set; }

    [Column("PhoneNumber")]
    [MinLength(6)]
    [MaxLength(50)]
    public string? PhoneNumber { get; set; }
}
