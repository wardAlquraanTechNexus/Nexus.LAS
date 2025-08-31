using Nexus.LAS.Application.DTOs.CompanyBankAccountDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;

namespace Nexus.LAS.Application.UseCases.CompanyBankAccountUseCases
{
    public class GetPaginCompanyAccountSignatory: GetBasePagingQuery<CompanyBankAccountDto>
    {
        public int CompanyId { get; set; }
    }
}
