using MediatR;
using Nexus.LAS.Application.DTOs.CompanyDTOs;

namespace Nexus.LAS.Application.UseCases.CompanyUseCases.Commands;

public class UpdateCompanyCommand : IRequest<GetCompanyDto>
{
    public int Id { get; set; }
    public string CompanyCode { get; set; }
    public DateTime? IncorporationDate { get; set; }
    public string CompanyEnglishName { get; set; }
    public string CompanyArabicName { get; set; }
    public string CompanyShortName { get; set; }
    public int? CompanyTypeIdn { get; set; }
    public int? CompanyClassIdn { get; set; }
    public int? GroupCompanyIdn { get; set; }
    public int? RelevantCompanyIdn { get; set; }
    public int? LegalTypeIdn { get; set; }
    public int? PlaceOfRegistrationMainIdn { get; set; }
    public int? PlaceOfRegistrationSubIdn { get; set; }
    public string? UpdateDescription { get; set; }
    public string? CciNumber { get; set; }
    public DateTime? CciIssueDate { get; set; }
    public DateTime? CciExpiryDate { get; set; }
    public bool Private { get; set; } = true;

}
