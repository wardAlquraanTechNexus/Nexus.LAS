using System;
using System.ComponentModel.DataAnnotations;

namespace Nexus.LAS.Application.DTOs.LawFirmDTOs
{
    public class LawFirmPersonDto
    {
        public int Id { get; set; }
        public int LawFirmId { get; set; }
        public int? StaffLevel { get; set; }
        public string? Name { get; set; }
        public string? Practice { get; set; }
        public string? Email { get; set; }
        public string? Phone { get; set; }
        public bool? StaffStatus { get; set; }
    }
}