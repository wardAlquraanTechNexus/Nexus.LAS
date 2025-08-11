// UpdateCompanyPersonInChargeCommand.cs
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.CompanyPersonInChargeUseCases.Commands.UpdateCompanyPersonInCharge;

public class UpdateCompanyPersonInChargeCommand : UpdateBaseCommand
{
    public int Id { get; set; }
    public int CompaniesIdn { get; set; }
    public int PersonsIdn { get; set; }
    public string? Designation { get; set; }
    public string AuthorityRule { get; set; } = null!;
    public string? Notes { get; set; }
    public DateTime? PersonInChargeDate { get; set; }
    public DateTime? CessationDate { get; set; }
    public bool? PersonInChargeActive { get; set; }
}