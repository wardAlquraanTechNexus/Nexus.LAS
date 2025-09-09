using System;

namespace Nexus.LAS.Application.DTOs.TransactionDTOs
{
    public class TransactionActionDto
    {
        public int Id { get; set; }
        public string ActionType { get; set; }
        public DateTime? ActionDate { get; set; }
        public string? Notes { get; set; }
        public int TransactionId { get; set; }
        public int PersonId { get; set; }

    }
}