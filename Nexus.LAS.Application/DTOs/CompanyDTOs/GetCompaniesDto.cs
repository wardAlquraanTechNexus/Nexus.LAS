using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Constants.Enums;
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
    public CommonStatus CompanyStatus { get; set; }
    public int? CompanyTypeIdn { get; set; }
    public int? CompanyClassIdn { get; set; }
    public int? GroupCompanyIdn { get; set; }
    public int? RelevantCompanyIdn { get; set; }
    public int? LegalTypeIdn { get; set; }
    public int? PlaceOfRegistrationMainIdn { get; set; }
    public int? PlaceOfRegistrationSubIdn { get; set; }
    public double? CapitalAmount { get; set; }
    public long? TotalShares { get; set; }
    public int? NumberOfPartners { get; set; }
    public string FPCCode { get; set; }
    public bool Private { get; set; }
    public string CreatedBy { get; set; }
    public DateTime CreatedAt { get; set; }
    public string? ModifiedBy { get; set; }
    public DateTime? ModifiedAt { get; set; }
}
