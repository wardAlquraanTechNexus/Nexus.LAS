namespace Nexus.LAS.Application.DTOs.CompanyBankAccountDTOs;

public class CompanyBankAccountDto
{
    public int Id { get; set; }
    public int CompanyId { get; set; }
    public string BankName { get; set; } = null!;
    public string AccountNumber { get; set; } = null!;
    public string? Note { get; set; }
    public DateTime BankAccountDate { get; set; }
    public bool BankAccountActive { get; set; }

}
