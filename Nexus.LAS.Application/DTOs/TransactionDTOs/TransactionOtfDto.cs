using System;

namespace Nexus.LAS.Application.DTOs.TransactionDTOs
{
    public class TransactionOtfDto
    {
        public int Id { get; set; }
        public int TransactionId { get; set; }
        public string OtfRegisterIdc { get; set; }
        public int OtfRegisterId { get; set; }
        public string? CustomId { get; set; }

    }
}