using Nexus.LAS.Application.DTOs.CompanyOtherContractDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;

namespace Nexus.LAS.Application.UseCases.CompanyUseCases.CompanyOtherContractUseCases.Queries
{
    public class GetPagingCompanyOtherContractQuery : GetBasePagingQuery<CompanyOtherContractDto>
    {
        public int CompanyId { get; set; }
    }
}
