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
    public string CciNumber { get; set; }
    public DateTime? CciIssueDate { get; set; }
    public DateTime? CciExpiryDate { get; set; }
    public bool? CciExpiryActiveReminder { get; set; }
    public string PlaceOfRegistrationMainIdn { get; set; }
    public string PlaceOfRegistrationMain { get; set; }
    public string PlaceOfRegistrationSubIdn { get; set; }
    public string PlaceOfRegistrationSub { get; set; }
    public decimal? CapitalAmount { get; set; }
    public long? TotalShares { get; set; }
    public int? NumberOfPartners { get; set; }
    public DateTime? UpdateDate { get; set; }
    public string UpdateDescription { get; set; }
    public int? PersonsIdn { get; set; }
    public int? CompanyStatus { get; set; }
    public bool Private { get; set; }
}
