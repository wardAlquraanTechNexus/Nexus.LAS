using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.CompanyBankAccountDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyBankAccountUseCases
{
    internal class GetPagingCompanyBankAccountHandler : GetBasePagingHandler<CompanyBankAccountDto, CompanyBankAccount, GetPaginCompanyAccountSignatory, ICompanyBankAccountService>
    {
        public GetPagingCompanyBankAccountHandler(ICompanyBankAccountService service, IMapper mapper) : base(service, mapper)
        {
        }
    }
}
