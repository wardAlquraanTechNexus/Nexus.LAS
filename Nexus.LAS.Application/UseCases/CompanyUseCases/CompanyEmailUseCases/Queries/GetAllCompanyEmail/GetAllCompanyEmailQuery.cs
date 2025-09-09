using Nexus.LAS.Application.DTOs.CompanyEmailDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetAllBase;

namespace Nexus.LAS.Application.UseCases.CompanyEmailUseCases.Queries
{
    public class GetAllCompanyEmailQuery : GetAllBaseQuery<CompanyEmailDto>
    {
        public int? CompanyId { get; set; }
    }
}
