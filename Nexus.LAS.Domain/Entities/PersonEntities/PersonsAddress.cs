using Nexus.LAS.Domain.Entities.Base;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Nexus.LAS.Domain.Entities.PersonEntities
{
    [Table("PersonsAddresses")]
    public class PersonsAddress : BaseEntity
    {
        [Column("PersonsAddressIDC", Order = 0)]
        public string? PersonsAddressIdc { get; set; } = null!;

        [Key, Column("PersonsAddressIDN", Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public override int Id { get; set; }

        [Column("Persons_IDN")]
        public int PersonsIdn { get; set; }

        [Column("AddressPrimary")]
        public bool AddressPrimary { get; set; }

        [Required, Column("AddressLine1")]
        public string AddressLine1 { get; set; } = null!;

        [Column("AddressLine2")]
        public string? AddressLine2 { get; set; }

        [Column("AddressLine3")]
        public string? AddressLine3 { get; set; }

        [Column("POBoxumber")]
        public string? POBoxNumber { get; set; }

        [Column("POBoxCity")]
        public string? POBoxCity { get; set; }

        [Column("POBoxCountry")]
        public string? POBoxCountry { get; set; }
    }
}
