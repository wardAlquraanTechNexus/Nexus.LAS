namespace Nexus.LAS.Application.UseCases.CompanyOtherContractUseCases;

public class UpsertCompanyOtherContractCommand
{
    public int? Id { get; set; }
    public DateTime? ContractDate { get; set; }
    public string ContractDescription { get; set; }
    public string? CreatedBy { get; set; }
    public DateTime? CreatedAt { get; set; }
    public string? ModifiedBy { get; set; }
    public DateTime? ModifiedAt { get; set; }
    public int CompaniesIdn { get; set; }
}
