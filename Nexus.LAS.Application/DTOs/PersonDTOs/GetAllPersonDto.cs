namespace Nexus.LAS.Application.DTOs.PersonDTOs
{
    public class GetAllPersonDto
    {
        public int Id { get; set; }
        public string? PersonIdc { get; set; }
        public string? PersonCode { get; set; }
        public string? PersonEnglishName { get; set; }
        public string? PersonArabicName { get; set; }
        public string? PersonShortName { get; set; }
        public int PersonStatus { get; set; }
        public string FPCCode { get; set; }
        public bool Private { get; set; }
    }
}
