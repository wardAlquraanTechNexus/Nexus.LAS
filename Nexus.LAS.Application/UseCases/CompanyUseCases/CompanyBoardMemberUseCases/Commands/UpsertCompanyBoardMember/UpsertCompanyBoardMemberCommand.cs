namespace Nexus.LAS.Application.UseCases.CompanyBoardMemberUseCases;

public class UpsertCompanyBoardMemberCommand
{
    public int? Id { get; set; }
    public int PersonIdn { get; set; }
    public string BoardMemberPosition { get; set; }
    public DateTime? MemberAppointmentDate { get; set; }
    public DateTime? MemberCessationDate { get; set; }
    public bool? BoardMemberActive { get; set; }
    public string? CreatedBy { get; set; }
    public DateTime? CreatedAt { get; set; }
    public string? ModifiedBy { get; set; }
    public DateTime? ModifiedAt { get; set; }
    public int CompaniesIdn { get; set; }
}
