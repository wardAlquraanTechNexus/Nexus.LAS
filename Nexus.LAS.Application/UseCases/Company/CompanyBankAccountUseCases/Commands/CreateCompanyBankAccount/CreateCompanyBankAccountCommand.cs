// CreateCompanyBankAccountCommand.cs
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.UseCases.CompanyBankAccountUseCases.Commands.CreateCompanyBankAccount;

public class CreateCompanyBankAccountCommand : CreateBaseCommand
{
    public int CompanyId { get; set; }
    public string BankName { get; set; } = null!;
    public string AccountNumber { get; set; } = null!;
    public string? Note { get; set; }
    public DateTime BankAccountDate { get; set; }
    public bool BankAccountActive { get; set; }
}