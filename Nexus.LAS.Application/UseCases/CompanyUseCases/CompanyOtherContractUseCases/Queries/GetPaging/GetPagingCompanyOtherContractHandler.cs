using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.CompanyOtherContractDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyUseCases.CompanyOtherContractUseCases.Queries.GetAll
{
    internal class GetPagingCompanyOtherContractHandler : GetBasePagingHandler<CompanyOtherContractDto, CompanyOtherContract, GetPagingCompanyOtherContractQuery, ICompanyOtherContractService>
    {
        public GetPagingCompanyOtherContractHandler(ICompanyOtherContractService service, IMapper mapper) : base(service, mapper)
        {
        }
    }
}
