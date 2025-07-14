using Nexus.LAS.Domain.Entities.Base;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Domain.Entities.TransactionEntities
{
    [Table("TransactionsOTFs")]
    public class TransactionOtf : BaseEntity
    {
        [Column("TransactionsOTFIDC")]
        public string TransactionsOtfIdc { get; set; } = null!;

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("TransactionsOTFIDN")]
        public override int Id { get; set; }

        [Column("Transactions_IDN")]
        public int TransactionsIdn { get; set; }

        [Column("OTFRegisters_IDC")]
        public string OtfRegistersIdc { get; set; } = null!;

        [Column("OTFRegisters_IDN")]
        public int OtfRegistersIdn { get; set; }

        [Column("id")]
        public string? CustomId { get; set; }
    }
}
