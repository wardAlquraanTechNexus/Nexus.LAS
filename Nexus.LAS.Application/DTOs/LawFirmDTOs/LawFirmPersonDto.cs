using System;

namespace Nexus.LAS.Application.DTOs.LawFirmDTOs
{
    public class LawFirmPersonDto
    {
        public int Id { get; set; }
        public int LawFirmId { get; set; }
        public int PersonId { get; set; }
        public string? Position { get; set; }
        // Add any other properties from LawFirmPerson entity except those in BaseEntity
    }
}