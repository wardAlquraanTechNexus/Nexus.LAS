namespace Nexus.LAS.Application.DTOs.CompanyPersonInChargeDTOs;

public class CompanyPersonInChargeDto
{
    public int Id { get; set; }
    public int CompanyIdn { get; set; }
    public int PersonIdn { get; set; }
    public string? Designation { get; set; }
    public string AuthorityRule { get; set; } = null!;
    public string? Notes { get; set; }
    public DateTime? PersonInChargeDate { get; set; }
    public DateTime? CessationDate { get; set; }
    public bool? PersonInChargeActive { get; set; }
    public string PersonNameEn { get; set; }
    public string PersonNameAr { get; set; }

}
