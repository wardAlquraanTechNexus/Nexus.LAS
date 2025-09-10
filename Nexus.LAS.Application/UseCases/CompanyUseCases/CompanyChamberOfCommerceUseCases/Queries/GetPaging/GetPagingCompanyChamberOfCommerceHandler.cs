using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyChamberOfCommerceDTOs;
using Nexus.LAS.Application.DTOs.CompanyDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyUseCases.CompanyChamberOfCommerceUseCases.Queries.GetPaging
{
    public class GetPagingCompanyChamberOfCommerceHandler
        : GetBasePagingHandler<CompanyChamberOfCommerceDto, CompanyChamberOfCommerce, GetPagingCompanyChamberOfCommerceQuery, ICompanyChamberOfCommerceService>
    {
        public GetPagingCompanyChamberOfCommerceHandler(ICompanyChamberOfCommerceService service, IMapper mapper)
            : base(service, mapper)
        {
        }

        public override async Task<PagingResult<CompanyChamberOfCommerceDto>> Handle(GetPagingCompanyChamberOfCommerceQuery request, CancellationToken cancellationToken)
        {
            return await _service.SearhDtoAsync(request);
        }
    }
}