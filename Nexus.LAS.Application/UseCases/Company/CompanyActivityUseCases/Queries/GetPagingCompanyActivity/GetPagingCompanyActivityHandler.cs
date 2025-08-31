using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.CompanyActivityDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyActivityUseCases.Queries
{
    public class GetPagingCompanyActivityHandler : GetBasePagingHandler<CompanyActivityDto, CompanyActivity, GetPagingCompanyActivityQuery, ICompanyActivityService>
    {
        public GetPagingCompanyActivityHandler(ICompanyActivityService service, IMapper mapper) : base(service, mapper)
        {
        }
    }
}
