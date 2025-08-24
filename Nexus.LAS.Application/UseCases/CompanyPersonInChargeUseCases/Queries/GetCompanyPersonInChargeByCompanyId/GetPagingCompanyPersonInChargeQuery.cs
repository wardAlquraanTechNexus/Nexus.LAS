using MediatR;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyPersonInChargeDTOs;
using Nexus.LAS.Application.UseCases.Base;

namespace Nexus.LAS.Application.UseCases.CompanyPersonInChargeUseCases.Queries
{
    public class GetPagingCompanyPersonInChargeQuery:BaseParams , IRequest<PagingResult<CompanyPersonInChargeDto>>
    {
        public int CompanyId { get; set; }
    }
}
