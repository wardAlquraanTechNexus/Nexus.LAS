namespace Nexus.LAS.Application.DTOs.LawFirmDTOs
{
    public class LawFirmCounselDto
    {
        public int Id { get; set; }
        public int LawFirmId { get; set; }
        public string CounselName { get; set; } = string.Empty;
        public int CounselLevel { get; set; }
        public int Rate { get; set; }
    }
}