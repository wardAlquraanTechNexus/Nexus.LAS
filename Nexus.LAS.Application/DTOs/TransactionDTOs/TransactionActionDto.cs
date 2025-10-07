using Nexus.LAS.Domain.Constants.Enums;
using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace Nexus.LAS.Application.DTOs.TransactionDTOs
{
    public class TransactionActionDto : FileDto
    {
        public int Id { get; set; }
        public int TransactionId { get; set; }
        public int PersonId { get; set; }
        public int? Time { get; set; }
        public string Description { get; set; } = null!;
        public DateTime DueDate { get; set; }
        public DateTime? ClosedDate { get; set; }
        public string? PersonName { get; set; }
        public TransactionActionStatus ActionStatus { get; set; }
        public List<FileDto> Files { get; set; } = new();

    }
}