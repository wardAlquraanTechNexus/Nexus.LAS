using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Domain.Entities.Base;
using Nexus.LAS.Domain.Entities.RegisterEntities;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Domain.Entities.TransactionEntities
{
    [Table("TransactionsActions")]
    public class TransactionAction : BaseEntity
    {
        [Column("TransactionsActionIDC")]
        public string TransactionsActionIdc { get; set; } = EntityIDCs.TransactionsActions;

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("TransactionsActionIDN")]
        public override int Id { get; set; }

        [Column("Transactions_IDN")]
        public int TransactionId { get; set; }

        [Column("Persons_IDN")]
        public int PersonId { get; set; }

        [Column("Time")]
        public int? Time { get; set; }

        [Column("Description")]
        public string Description { get; set; } = null!;

        [Column("DueDate")]
        public DateTime DueDate { get; set; }

        [Column("ClosedDate")]
        public DateTime? ClosedDate { get; set; }

        [Column("ActionStatus")]
        public TransactionActionStatus ActionStatus { get; set; } = TransactionActionStatus.Pending;

    }

}
