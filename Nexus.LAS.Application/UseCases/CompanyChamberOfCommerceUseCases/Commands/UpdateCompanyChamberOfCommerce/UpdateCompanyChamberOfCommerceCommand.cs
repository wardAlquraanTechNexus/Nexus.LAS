// UpdateCompanyChamberOfCommerceCommand.cs
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.CompanyChamberOfCommerceUseCases.Commands.UpdateCompanyChamberOfCommerce;

public class UpdateCompanyChamberOfCommerceCommand : UpdateBaseCommand
{
    public int Id { get; set; }
    public int CompaniesIdn { get; set; }
    public string CciNumber { get; set; } = null!;
    public DateTime CciIssueDate { get; set; }
    public DateTime? CciExpiryDate { get; set; }
    public bool? CciExpiryActiveReminder { get; set; }
    public string? CciUsername { get; set; }
    public string? CciPassword { get; set; }
}