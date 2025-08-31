using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.CompanyBankAccountDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.SearchAllBase;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyBankAccountUseCases.Queries.GetAll
{
    public class GetAllCompanyBankAccountHandler : SearchAllBaseHandler<CompanyBankAccountDto, CompanyBankAccount, GetAllCompanyBankAccountQuery, ICompanyBankAccountService>
    {
        public GetAllCompanyBankAccountHandler(ICompanyBankAccountService service, IMapper mapper) : base(service, mapper)
        {
        }
    }
}
