// CreateCompanyPersonInChargeCommand.cs
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.CompanyPersonInChargeUseCases.Commands.CreateCompanyPersonInCharge;

public class CreateCompanyPersonInChargeCommand : CreateBaseCommand
{
    public int CompanyIdn { get; set; }
    public int PersonIdn { get; set; }
    public int Designation { get; set; }
    public int? AuthorityRule { get; set; }
    public string? Notes { get; set; }
    public DateTime? PersonInChargeDate { get; set; }
    public DateTime? _cessationDate; 
    public DateTime? CessationDate { 
        get => _cessationDate;
        set
        {
            _cessationDate = value;
            if(value == null)
            {
                PersonInChargeActive = true;
            }
            else
            {
                PersonInChargeActive = false;
            }
        }
    }
    public bool? PersonInChargeActive;
}