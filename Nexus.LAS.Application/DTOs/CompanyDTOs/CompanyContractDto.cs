namespace Nexus.LAS.Application.DTOs.CompanyContractDTOs;

public class CompanyContractDto
{
    public int Id { get; set; } 
    public int CompanyId { get; set; }
    public int ContractType { get; set; }
    public DateTime? DocumentDate { get; set; }
    public DateTime? CommencementDate { get; set; }
    public DateTime? ContractExpiryDate { get; set; }
    public bool? ContractExpiryActiveReminder { get; set; }
    public string ContractDescription { get; set; } = string.Empty;
    public int ContractStatus { get; set; }
    public string FileName { get; set; } = string.Empty;
    public string ContentType { get; set; } = string.Empty;
    public byte[]? DataFile { get; set; } 

}
