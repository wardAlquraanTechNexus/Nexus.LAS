namespace Nexus.LAS.Application.DTOs.CompanyOtherContractDTOs;

public class CompanyOtherContractDto
{
    public int Id { get; set; }
    public DateTime? ContractDate { get; set; }
    public string ContractDescription { get; set; }
    public string? CreatedBy { get; set; }
    public DateTime? CreatedAt { get; set; }
    public string? ModifiedBy { get; set; }
    public DateTime? ModifiedAt { get; set; }
    public int CompaniesIdn { get; set; }

}
