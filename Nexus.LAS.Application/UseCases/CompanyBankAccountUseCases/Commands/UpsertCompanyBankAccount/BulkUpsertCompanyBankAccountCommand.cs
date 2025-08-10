using MediatR;
using Nexus.LAS.Application.DTOs.CompanyBankAccountDTOs;

namespace Nexus.LAS.Application.UseCases.CompanyBankAccountUseCases;

public class BulkUpsertCompanyBankAccountCommand: IRequest<List<CompanyBankAccountDto>>
{
    public List<UpsertCompanyBankAccountCommand> Commands { get; set; }
}
