using Nexus.LAS.Domain.Constants;
using System.ComponentModel.DataAnnotations;

namespace Nexus.LAS.Application.DTOs.CompanyDTOs;

public class GetCompanyDto
{
    public int Id { get; set; }
    public string CompanyIdc { get; set; } = EntityIDCs.Company;
    public string? CompanyCode { get; set; }
    public string? CompanyEnglishName { get; set; }
    public string? CompanyArabicName { get; set; }
    public string? CompanyShortName { get; set; }
    public DateTime? IncorporationDate { get; set; }
    public int CompanyStatus { get; set; }
    public int? CompanyTypeIdn { get; set; }
    public int? CompanyClassIdn { get; set; }
    public int? GroupCompanyIdn { get; set; }
    public int? RelevantCompanyIdn { get; set; }
    public int? LegalTypeIdn { get; set; }
    public string? CciNumber { get; set; }
    public DateTime? CciIssueDate { get; set; }
    public DateTime? CciExpiryDate { get; set; }
    public bool? CciExpiryActiveReminder { get; set; }
    public int? PlaceOfRegistrationMainIdn { get; set; }
    public int? PlaceOfRegistrationSubIdn { get; set; }
    public decimal? CapitalAmount { get; set; }
    public long? TotalShares { get; set; }
    public int? NumberOfPartners { get; set; }
    public DateTime? UpdateDate { get; set; }
    public string UpdateDescription { get; set; }
    public int? PersonsIdn { get; set; }
    public string FPCCode { get; set; }
    public bool Private { get; set; }
    public string CreatedBy { get; set; }
    public DateTime CreatedAt { get; set; }
    public string? ModifiedBy { get; set; }
    public DateTime? ModifiedAt { get; set; }
}
