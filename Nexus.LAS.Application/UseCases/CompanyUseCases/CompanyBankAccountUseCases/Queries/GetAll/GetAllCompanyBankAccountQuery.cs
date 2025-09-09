using Nexus.LAS.Application.DTOs.CompanyBankAccountDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetAllBase;

namespace Nexus.LAS.Application.UseCases.CompanyBankAccountUseCases.Queries.GetAll
{
    public class GetAllCompanyBankAccountQuery:GetAllBaseQuery<CompanyBankAccountDto>
    {
        public int CompanyId { get; set; }
    }
}
