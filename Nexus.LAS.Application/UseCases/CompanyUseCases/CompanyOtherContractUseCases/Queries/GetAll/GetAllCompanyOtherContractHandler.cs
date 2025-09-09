using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.CompanyOtherContractDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetAllBase;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyUseCases.CompanyOtherContractUseCases.Queries.GetAll
{
    internal class GetAllCompanyOtherContractHandler : GetAllBaseHandler<CompanyOtherContractDto, CompanyOtherContract, GetAllCompanyOtherContractQuery, ICompanyOtherContractService>
    {
        public GetAllCompanyOtherContractHandler(ICompanyOtherContractService service, IMapper mapper) : base(service, mapper)
        {
        }
    }
}
