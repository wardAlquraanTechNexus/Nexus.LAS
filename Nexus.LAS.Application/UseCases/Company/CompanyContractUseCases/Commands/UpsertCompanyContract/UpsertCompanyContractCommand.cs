namespace Nexus.LAS.Application.UseCases.CompanyContractUseCases;

public class UpsertCompanyContractCommand
{
    public int? Id { get; set; }
    public string ContractType { get; set; }
    public DateTime? DocumentDate { get; set; }
    public DateTime? CommencementDate { get; set; }
    public DateTime? ContractExpiryDate { get; set; }
    public bool? ContractExpiryActiveReminder { get; set; }
    public string ContractDescription { get; set; }
    public string ContractStatus { get; set; }
    public string? CreatedBy { get; set; }
    public DateTime? CreatedAt { get; set; }
    public string? ModifiedBy { get; set; }
    public DateTime? ModifiedAt { get; set; }
    public int CompaniesIdn { get; set; }
}
