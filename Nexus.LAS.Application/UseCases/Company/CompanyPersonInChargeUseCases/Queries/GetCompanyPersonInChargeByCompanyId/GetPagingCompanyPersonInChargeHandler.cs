using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyPersonInChargeDTOs;

namespace Nexus.LAS.Application.UseCases.CompanyPersonInChargeUseCases.Queries
{
    public class GetPagingCompanyPersonInChargeHandler: IRequestHandler<GetPagingCompanyPersonInChargeQuery, PagingResult<CompanyPersonInChargeDto>>
    {
        private readonly ICompanyPersonInChargeService _companyPersonInChargeService;
        public GetPagingCompanyPersonInChargeHandler(ICompanyPersonInChargeService companyPersonInChargeService)
        {
            _companyPersonInChargeService = companyPersonInChargeService;
        }
        public async Task<PagingResult<CompanyPersonInChargeDto>> Handle(GetPagingCompanyPersonInChargeQuery request, CancellationToken cancellationToken)
        {
            return await _companyPersonInChargeService.GetPaging(request);
        }
    }
}
