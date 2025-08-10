using System.ComponentModel.DataAnnotations;

namespace Nexus.LAS.Application.DTOs.CompanyDTOs;

public class GetCompaniesDto
{
    public int Id { get; set; }
    public string? CompanyIdc { get; set; }
    public string? CompanyCode { get; set; }
    public string? CompanyEnglishName { get; set; }
    public string? CompanyArabicName { get; set; }
    public string? CompanyShortName { get; set; }
    public int CompanyStatus { get; set; }
    public string FPCCode { get; set; }

    public bool Private { get; set; }
}
