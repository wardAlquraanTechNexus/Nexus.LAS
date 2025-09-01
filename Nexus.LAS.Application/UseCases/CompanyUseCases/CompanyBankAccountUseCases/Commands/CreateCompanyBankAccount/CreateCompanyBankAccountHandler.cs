// CreateCompanyBankAccountHandler.cs
using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyBankAccountUseCases.Commands.CreateCompanyBankAccount;

public class CreateCompanyBankAccountHandler : CreateBaseCommandHandler<CompanyBankAccount, CreateCompanyBankAccountCommand, ICompanyBankAccountService>
{
    public CreateCompanyBankAccountHandler(ICompanyBankAccountService service, IMapper mapper) : base(service, mapper)
    {
    }
}