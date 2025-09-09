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
        public string Status { get; set; } = null!;
        public DateTime? LasDate { get; set; }
        public int? EstYear { get; set; }
        public string? Website { get; set; }
        public bool Private { get; set; }
    }
}