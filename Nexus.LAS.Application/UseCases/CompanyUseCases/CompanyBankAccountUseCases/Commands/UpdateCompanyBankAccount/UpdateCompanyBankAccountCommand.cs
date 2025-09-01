// UpdateCompanyBankAccountCommand.cs
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.CompanyBankAccountUseCases.Commands.UpdateCompanyBankAccount;

public class UpdateCompanyBankAccountCommand : UpdateBaseCommand
{
    public int Id { get; set; }
    public int CompanyId { get; set; }
    public string BankName { get; set; } = null!;
    public string AccountNumber { get; set; } = null!;
    public string? Note { get; set; }
    public DateTime BankAccountDate { get; set; }
    public bool BankAccountActive { get; set; }
}