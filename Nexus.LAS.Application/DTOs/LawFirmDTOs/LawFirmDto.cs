using Nexus.LAS.Domain.CommonAttributes;
using Nexus.LAS.Domain.Constants.Enums;
using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Nexus.LAS.Application.DTOs.LawFirmDTOs
{
    public class LawFirmDto
    {
        public int Id { get; set; }
        public string LawFirmCode { get; set; }
        public string EnglishName { get; set; } = null!;
        public string ArabicName { get; set; } = null!;
        public string ShortName { get; set; } = null!;
        public CommonStatus Status { get; set; }
        public DateTime? LasDate { get; set; }
        public int? EstYear { get; set; }
        public string? Website { get; set; }
        public bool Private { get; set; }
        [IgnoreOnExport]
        public string CreatedBy { get; set; }
        [IgnoreOnExport]
        public DateTime CreatedAt { get; set; }
        [IgnoreOnExport]
        public string? ModifiedBy { get; set; }
        [IgnoreOnExport]
        public DateTime? ModifiedAt { get; set; }
        [IgnoreOnExport]
        public bool IsDeleted { get; set; } = false;
        [IgnoreOnExport]
        public string? DeletedBy { get; set; }
        [IgnoreOnExport]
        public DateTime? DeletedAt { get; set; }
    }
}