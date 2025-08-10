namespace Nexus.LAS.Application.DTOs.CompanyAddressDTOs;

public class CompanyAddressDto
{
    public int? Id { get; set; }
    public int CompaniesIdn { get; set; }
    public bool AddressPrimary { get; set; }
    public string AddressLine1 { get; set; } = null!;
    public string? POBoxCity { get; set; }
    public string? POBoxCountry { get; set; }
    public string? CreatedBy { get; set; }
    public DateTime? CreatedAt { get; set; }
    public string? ModifiedBy { get; set; }
    public DateTime? ModifiedAt { get; set; }
}
