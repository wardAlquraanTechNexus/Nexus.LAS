using System;

namespace Nexus.LAS.Application.DTOs.TransactionDTOs
{
    public class TransactionDto
    {
        public int Id { get; set; }
        public DateTime? TransactionDate { get; set; }
        public string TransactionCode { get; set; }
        public string SubjectType { get; set; }
        public string? SubjectDescription { get; set; }
        public string? Status { get; set; }
        public bool Private { get; set; }
    }
}