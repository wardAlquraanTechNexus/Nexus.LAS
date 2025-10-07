using Nexus.LAS.Domain.Constants;
using System;

namespace Nexus.LAS.Application.DTOs.TransactionDTOs
{
    public class TransactionRegisterDto
    {
        public int Id { get; set; }
        public int _transactionId;
        public int TransactionId
        {
            get => _transactionId;
            set
            {
                _transactionId = value;
                TransactionNumber = $"{EntityIDCs.Transactions}{_transactionId:D4}";
            }
        }
        public string TransactionNumber { get; set; }
        public DateTime? TransactionDate { get; set; }
        public string? TransactionSubjectDecription { get; set; }
        public string RegisterIdc { get; set; }
        public int RegisterId { get; set; }
        public string? RegisterName { get; set; }
        public bool? PrimaryRegister { get; set; }
        public int? SubjectType { get; set; }

    }
}