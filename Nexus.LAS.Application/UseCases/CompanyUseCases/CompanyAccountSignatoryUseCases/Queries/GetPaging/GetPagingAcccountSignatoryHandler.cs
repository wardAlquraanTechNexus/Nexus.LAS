using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.CompanyDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Application.UseCases.CompanyAccountSignatoryUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyAccountSignatoryUseCases.Queries.GetPaging
{
    internal class GetPagingAcccountSignatoryHandler:GetBasePagingHandler<CompanyAccountSignatoryDTO, CompanyAccountSignatory, GetPagingAcccountSignatoryQuery, ICompanyAccountSignatoryService>
    {
        public GetPagingAcccountSignatoryHandler(ICompanyAccountSignatoryService service, AutoMapper.IMapper mapper) : base(service, mapper)
        {
        }
    }
    
}
