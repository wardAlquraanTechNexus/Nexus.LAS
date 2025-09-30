using Nexus.LAS.Domain.CommonAttributes;
using Nexus.LAS.Domain.Constants.Enums;
using System;

namespace Nexus.LAS.Application.DTOs.TransactionDTOs
{
    public class TransactionDto
    {
        public int Id { get; set; }
        public DateTime? TransactionDate { get; set; }
        public string TransactionCode { get; set; }
        public int? SubjectType { get; set; }
        public string? SubjectDescription { get; set; }
        public CommonStatus Status { get; set; }
        public bool Private { get; set; }
        public int? PersonId { get; set; }
        public int? CompanyId { get; set; }
        [IgnoreOnExport]
        public string CreatedBy { get; set; }
        [IgnoreOnExport]
        public DateTime CreatedAt { get; set; }
        [IgnoreOnExport]
        public string? ModifiedBy { get; set; }
        [IgnoreOnExport]
        public DateTime? ModifiedAt { get; set; }
    }
}