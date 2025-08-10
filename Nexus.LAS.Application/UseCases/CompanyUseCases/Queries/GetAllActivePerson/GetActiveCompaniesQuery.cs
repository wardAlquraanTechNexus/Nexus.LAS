using MediatR;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyDTOs;
using Nexus.LAS.Application.UseCases.Base;

namespace Nexus.LAS.Application.UseCases.CompanyUseCases.Queries.GetAllActiveCompany
{
    public class GetActiveCompaniesQuery : BaseParams, IRequest<PagingResult<GetCompaniesDto>>
    {
        public string? SearchBy { get; set; }
        public bool? Private { get; set; }
    }
}
