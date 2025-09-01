using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.CompanyCapitalDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyCapitalUseCases.Queries.GetPagingCompanyCapital
{
    public class GetPagingCompanyCapitalHandler : GetBasePagingHandler<CompanyCapitalDto, CompanyCapital, GetPagingCompanyCapitalQueryy, ICompanyCapitalService>
    {
        public GetPagingCompanyCapitalHandler(ICompanyCapitalService service, IMapper mapper) : base(service, mapper)
        {
        }
    }
}
