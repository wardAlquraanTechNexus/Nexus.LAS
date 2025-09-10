
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
}
