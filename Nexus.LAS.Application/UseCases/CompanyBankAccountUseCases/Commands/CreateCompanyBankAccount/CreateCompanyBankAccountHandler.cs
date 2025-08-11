// CreateCompanyBankAccountHandler.cs
using AutoMapper;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyBankAccountUseCases.Commands.CreateCompanyBankAccount;

public class CreateCompanyBankAccountHandler : CreateBaseCommandHandler<CompaniesBankAccount, CreateCompanyBankAccountCommand, ICompanyBankAccountService>
{
    public CreateCompanyBankAccountHandler(ICompanyBankAccountService service, IMapper mapper) : base(service, mapper)
    {
    }
}