// UpdateCompanyBoardMemberCommand.cs
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.CompanyBoardMemberUseCases.Commands.UpdateCompanyBoardMember;

public class UpdateCompanyBoardMemberCommand : UpdateBaseCommand
{
    public int Id { get; set; }
    public int CompanyId { get; set; }
    public int PersonId { get; set; }
    public int Position { get; set; }
    public DateTime? AppointmentDate { get; set; }
    public DateTime? CessationDate { get; set; }
    public bool IsActive { 
        get => _isActive;
        set
        {
            _isActive = value;
            if (value)
            {
                CessationDate = null;
            }
            else
            {
                CessationDate = DateTime.UtcNow;
            }
        }
    }
    public bool _isActive;
}