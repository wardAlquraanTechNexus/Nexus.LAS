namespace Nexus.LAS.Application.DTOs.CompanyOtherContractDTOs;

public class CompanyOtherContractDto
{
    public int Id { get; set; }
    public DateTime? ContractDate { get; set; }
    public string ContractDescription { get; set; }
    public int CompanyId { get; set; }

}
