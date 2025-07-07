using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Domain.Entities.Lookup
{
    [Table("Currencies")]
    public class Currency
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("ID")]
        public int Id { get; set; }

        [Required]
        [MaxLength(100)]
        [Column("Entity")]
        public string Entity { get; set; } = null!;

        [Required]
        [MaxLength(100)]
        [Column("Currency")]
        public string CurrencyName { get; set; } = null!;

        [Required]
        [Column("AlphabeticCode")]
        [StringLength(3)]
        public string AlphabeticCode { get; set; } = null!;

        [Column("NumericCode")]
        [StringLength(3)]
        public string? NumericCode { get; set; }

        [Column("MinorUnit")]
        [StringLength(1)]
        public string? MinorUnit { get; set; }

        [Required]
        [Column("IsFundYesNo")]
        public bool IsFundYesNo { get; set; }
    }
}
