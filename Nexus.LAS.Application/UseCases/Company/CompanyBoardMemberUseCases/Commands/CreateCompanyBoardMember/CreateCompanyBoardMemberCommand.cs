// CreateCompanyBoardMemberCommand.cs
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.CompanyBoardMemberUseCases.Commands.CreateCompanyBoardMember;

public class CreateCompanyBoardMemberCommand : CreateBaseCommand
{
    public int? CompaniesBoardsIdn { get; set; }
    public int PersonIdn { get; set; }
    public string BoardMemberPosition { get; set; } = null!;
    public DateTime? MemberAppointmentDate { get; set; }
    public DateTime? MemberCessationDate { get; set; }
    public bool? BoardMemberActive { get; set; }
    public int CompaniesIdn { get; set; }
}