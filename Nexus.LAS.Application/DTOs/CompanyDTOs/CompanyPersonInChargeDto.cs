namespace Nexus.LAS.Application.DTOs.CompanyPersonInChargeDTOs;

public class CompanyPersonInChargeDto
{
    public int Id { get; set; }
    public int CompanyIdn { get; set; }
    public int PersonIdn { get; set; }
    public int? Designation { get; set; }
    public int? AuthorityRule { get; set; }
    public string? Notes { get; set; }
    public DateTime? PersonInChargeDate { get; set; }
    public DateTime? CessationDate { get; set; }
    public bool? PersonInChargeActive { get; set; }
    public string PersonNameEn { get; set; }
    public string PersonNameAr { get; set; }
    public string CompanyNameEn { get; set; }
    public string CompanyNameAr { get; set; }

}
