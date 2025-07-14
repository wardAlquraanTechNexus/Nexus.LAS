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
    [Table("TransactionsRegisters")]
    public class TransactionRegister : BaseEntity
    {
        [Column("TransactionsRegisterIDC")]
        public string TransactionsRegisterIdc { get; set; } = null!;

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("TransactionsRegisterIDN")]
        public override int Id { get; set; }

        [Column("Transactions_IDN")]
        public int TransactionsIdn { get; set; }

        [Column("Registers_IDC")]
        public string RegistersIdc { get; set; } = null!;

        [Column("Registers_IDN")]
        public int RegistersIdn { get; set; }

        [Column("PrimaryRegister")]
        public bool? PrimaryRegister { get; set; }

    }
}
