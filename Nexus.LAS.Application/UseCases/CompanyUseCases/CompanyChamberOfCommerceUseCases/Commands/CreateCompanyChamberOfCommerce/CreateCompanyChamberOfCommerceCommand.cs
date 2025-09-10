// CreateCompanyChamberOfCommerceCommand.cs
using Microsoft.AspNetCore.Http;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.CompanyChamberOfCommerceUseCases.Commands.CreateCompanyChamberOfCommerce;

public class CreateCompanyChamberOfCommerceCommand : CreateBaseCommand
{
    public int CompanyIdn { get; set; }
    public string CciNumber { get; set; }
    public DateTime CciIssueDate { get; set; }
    public DateTime? CciExpiryDate { get; set; }
    public bool CciExpiryActiveReminder { get; set; }
    public string CciUsername { get; set; }
    public string CciPassword { get; set; }
    public IFormFile File { get; set; }
}