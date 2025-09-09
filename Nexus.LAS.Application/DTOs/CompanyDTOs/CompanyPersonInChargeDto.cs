namespace Nexus.LAS.Application.DTOs.CompanyPersonInChargeDTOs;

public class CompanyPersonInChargeDto
{
    public int Id { get; set; }
    public int CompanyIdn { get; set; }
    public int PersonIdn { get; set; }
    public string? Designation 
    { 
        get => _designation;
        set
        {
            _designation = value?.Trim();
            Designations = _designation?.Split(',').Select(d => Convert.ToInt32(d.Trim())).ToList() ?? new List<int>();
        }
    }
    public List<int> Designations { get; set; } = new();
    private string? _designation;
    public int AuthorityRule { get; set; }
    public string? Notes { get; set; }
    public DateTime? PersonInChargeDate { get; set; }
    public DateTime? CessationDate { get; set; }
    public bool? PersonInChargeActive { get; set; }
    public string PersonNameEn { get; set; }
    public string PersonNameAr { get; set; }

}
