using Nexus.LAS.Application.DTOs.CompanyOtherContractDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetAllBase;

namespace Nexus.LAS.Application.UseCases.CompanyUseCases.CompanyOtherContractUseCases.Queries
{
    public class GetAllCompanyOtherContractQuery : GetAllBaseQuery<CompanyOtherContractDto>
    {
        public int CompanyId { get; set; }
    }
}
