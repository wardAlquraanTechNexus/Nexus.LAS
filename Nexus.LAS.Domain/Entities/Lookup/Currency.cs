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
        public int Id { get; set; }
        public string Entity { get; set; }
        [Column("Currency")]
        public string CurrencyName { get; set; }
        [MaxLength(3)]
        public string AlphabeticCode { get; set; }
        public int? NumericCode { get; set; }
        public int? MinorUnit { get; set; }
        public bool IsFundYesNo { get; set; }
    }
}
