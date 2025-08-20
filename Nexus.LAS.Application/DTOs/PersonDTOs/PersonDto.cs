namespace Nexus.LAS.Application.DTOs.PersonDTOs;

public class PersonDto
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
    public string? FileName { get; set; }
    public string? ContentType { get; set; }
    public byte[]? PersonImage { get; set; }
    
    // Auditing fields
    public string? CreatedBy { get; set; }
    public DateTime CreatedAt { get; set; }
    public string? ModifiedBy { get; set; }
    public DateTime? ModifiedAt { get; set; }
}
