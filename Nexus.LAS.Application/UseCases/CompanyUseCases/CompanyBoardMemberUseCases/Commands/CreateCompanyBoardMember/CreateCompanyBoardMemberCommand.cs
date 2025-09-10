// CreateCompanyBoardMemberCommand.cs
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.CompanyBoardMemberUseCases.Commands.CreateCompanyBoardMember;

public class CreateCompanyBoardMemberCommand : CreateBaseCommand
{
    public int CompanyId { get; set; }
    public int PersonId { get; set; }
    public int Position { get; set; }
    public DateTime? AppointmentDate { get; set; }
    public bool IsActive { get; set; } = true;
}