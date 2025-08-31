namespace Nexus.LAS.Application.UseCases.CompanyBankAccountUseCases;

public class UpsertCompanyBankAccountCommand
{
    public int? Id { get; set; }
    public string BankName { get; set; }
    public string AccountNumber { get; set; }
    public string Note { get; set; }
    public DateTime BankAccountDate { get; set; }
    public bool BankAccountActive { get; set; }
    public string? CreatedBy { get; set; }
    public DateTime? CreatedAt { get; set; }
    public string? ModifiedBy { get; set; }
    public DateTime? ModifiedAt { get; set; }
    public int CompaniesIdn { get; set; }
}
