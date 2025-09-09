using Nexus.LAS.Domain.Constants;
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
    [Table("Transactions")]
    public class Transaction : BaseEntity
    {
        [Column("TransactionIDC")]
        public string TransactionIdc { get; set; } = EntityIDCs.Transactions;

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("TransactionIDN")]
        public override int Id { get; set; }

        [Column("TransactionDate")]
        public DateTime? TransactionDate { get; set; }

        [Column("TransactionCode")]
        public string TransactionCode { get; set; } = null!;

        [Column("TransactionSubjectType")]
        public string SubjectType { get; set; } = null!;

        [Column("TransactionSubjectDescription")]
        public string? SubjectDescription { get; set; }

        [Column("TransactionStatus")]
        public string? Status { get; set; }

        [Column("Private")]
        public bool Private { get; set; }
    }
}
