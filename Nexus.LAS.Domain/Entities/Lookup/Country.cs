using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Nexus.LAS.Domain.Entities.Lookup
{
    [Table("Countries")]
    public class Country
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        [Column("CountryId")]
        public int CountryId { get; set; }

        [MaxLength(500)]
        [Column("CountryName")]
        public string? CountryName { get; set; }

        [MaxLength(50)]
        [Column("FIPS104")]
        public string? FIPS104 { get; set; }

        [MaxLength(50)]
        [Column("ISO2")]
        public string? ISO2 { get; set; }

        [MaxLength(50)]
        [Column("ISO3")]
        public string? ISO3 { get; set; }

        [MaxLength(50)]
        [Column("ISON")]
        public string? ISON { get; set; }

        [MaxLength(50)]
        [Column("Internet")]
        public string? Internet { get; set; }

        [MaxLength(500)]
        [Column("Capital")]
        public string? Capital { get; set; }

        [MaxLength(1000)]
        [Column("MapReference")]
        public string? MapReference { get; set; }

        [MaxLength(500)]
        [Column("NationalitySingular")]
        public string? NationalitySingular { get; set; }

        [MaxLength(500)]
        [Column("NationalityPlural")]
        public string? NationalityPlural { get; set; }

        [MaxLength(100)]
        [Column("Currency")]
        public string? Currency { get; set; }

        [MaxLength(50)]
        [Column("CurrencyCode")]
        public string? CurrencyCode { get; set; }

        [MaxLength(50)]
        [Column("Population")]
        public string? Population { get; set; }

        [MaxLength(500)]
        [Column("Title")]
        public string? Title { get; set; }
    }

}
