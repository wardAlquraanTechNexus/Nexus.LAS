using Nexus.LAS.Application.DTOs.CompanyDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetAllBase;

namespace Nexus.LAS.Application.UseCases.CompanyBoardUseCases.Queries
{
    public class GetAllCompanyBoardQuery:GetAllBaseQuery<CompanyBoardDto>
    {
        public int CompanyId { get; set; }
    }
}
