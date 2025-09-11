// CreateCompanyBoardMemberCommand.cs
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.CompanyBoardMemberUseCases.Commands.CreateCompanyBoardMember;

public class CreateCompanyBoardMemberCommand : CreateBaseCommand
{
    public int CompanyId { get; set; }
    public int PersonId { get; set; }
    public int Position { get; set; }
    public DateTime AppointmentDate { get; set; }
    public DateTime? CessationDate 
    { 
        get => _cessationDate;
        set
        {
            _cessationDate = value;
            if (_cessationDate == null)
            {
                IsActive = true;
            }
            else
            {
                IsActive = false;
            }
        }
    }
    public DateTime? _cessationDate;
    public bool IsActive;
}