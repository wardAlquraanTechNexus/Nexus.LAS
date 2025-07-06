using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Nexus.LAS.Domain.Entities.Lookup
{
    [Table("Countries")]
    public class Country
    {
        [Key]
        [Column("CountryId")]
        public int CountryId { get; set; }
        public string? CountryName { get; set; }
        public string? FIPS104 { get; set; }
        public string? ISO2 { get; set; }
        public string? ISO3 { get; set; }
        public string? ISON { get; set; }
        public string? Internet { get; set; }
        public string? Capital { get; set; }
        public string? MapReference { get; set; }
        public string? NationalitySingular { get; set; }
        public string? NationalityPlural { get; set; }
        public string? Currency { get; set; }
        public string? CurrencyCode { get; set; }
        public long? Population { get; set; }
        public string? Title { get; set; }
    }

}
