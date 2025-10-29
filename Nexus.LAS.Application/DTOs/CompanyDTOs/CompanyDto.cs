using Nexus.LAS.Domain.Constants.Enums;

namespace Nexus.LAS.Application.DTOs.CompanyDTOs;

public class CompanyDto
{
    public int Id { get; set; }
    public string? CompanyIdc { get; set; }
    public string CompanyCode { get; set; }
    public DateTime? IncorporationDate { get; set; }
    public string CompanyEnglishName { get; set; }
    public string CompanyArabicName { get; set; }
    public string CompanyShortName { get; set; }
    public string CompanyTypeIdn { get; set; }
    public string CompanyType { get; set; }
    public string CompanyClassIdn { get; set; }
    public string CompanyClass { get; set; }
    public string GroupCompany { get; set; }
    public string RelevantCompany { get; set; }
    public string LegalType { get; set; }
    public string PlaceOfRegistrationMainIdn { get; set; }
    public string PlaceOfRegistrationMain { get; set; }
    public string PlaceOfRegistrationSubIdn { get; set; }
    public string PlaceOfRegistrationSub { get; set; }
    public CommonStatus? CompanyStatus { get; set; }
    public bool Private { get; set; }
}
