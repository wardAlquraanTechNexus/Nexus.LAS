
namespace Nexus.LAS.Application.DTOs.CompanyBoardMemberDTOs;

public class CompanyBoardMemberDto
{
    public int Id { get; set; }
    public int CompanyId { get; set; }
    public int PersonId { get; set; }
    public int Position { get; set; }
    public DateTime? AppointmentDate { get; set; }
    public DateTime? CessationDate { get; set; }
    public bool IsActive { get; set; }
    public string PersonNameEn { get; set; }
    public string PersonNameAr { get; set; }
    public string CompanyNameEn { get; set; }
    public string CompanyNameAr { get; set; }
}
