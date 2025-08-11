// UpdateCompanyBankAccountHandler.cs
using AutoMapper;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyBankAccountUseCases.Commands.UpdateCompanyBankAccount;

public class UpdateCompanyBankAccountHandler : UpdateBaseCommandHandler<CompaniesBankAccount, UpdateCompanyBankAccountCommand, ICompanyBankAccountService>
{
    public UpdateCompanyBankAccountHandler(ICompanyBankAccountService service, IMapper mapper) : base(service, mapper)
    {
    }
}