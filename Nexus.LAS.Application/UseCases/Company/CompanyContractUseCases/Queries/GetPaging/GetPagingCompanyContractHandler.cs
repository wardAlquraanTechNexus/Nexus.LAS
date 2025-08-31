using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyContractDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.CompanyContractUseCases.Queries.GetPaging
{
    public class GetPagingCompanyContractHandler : GetBasePagingHandler<CompanyContractDto, CompanyContract, GetPagingCompanyContractQuery, ICompanyContractService>
    {
        public GetPagingCompanyContractHandler(ICompanyContractService service, IMapper mapper) : base(service, mapper)
        {
        }

        public override async Task<PagingResult<CompanyContractDto>> Handle(GetPagingCompanyContractQuery request, CancellationToken cancellationToken)
        {
            return await _service.SearhDtoAsync(request);
        }
    }
}
