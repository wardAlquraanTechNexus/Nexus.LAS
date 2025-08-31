using Nexus.LAS.Application.DTOs.CompanyBankAccountDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.SearchAllBase;

namespace Nexus.LAS.Application.UseCases.CompanyBankAccountUseCases.Queries.GetAll
{
    public class GetAllCompanyBankAccountQuery:SearchAllBaseQuery<CompanyBankAccountDto>
    {
        public int CompanyId { get; set; }
    }
}
