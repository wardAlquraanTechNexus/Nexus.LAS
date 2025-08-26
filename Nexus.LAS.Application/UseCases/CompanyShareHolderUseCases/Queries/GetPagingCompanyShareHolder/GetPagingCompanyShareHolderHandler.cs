using AutoMapper;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.DTOs.CompanyShareHolderDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyShareHolderUseCases.Queries
{
    internal class GetPagingCompanyShareHolderHandler : GetBasePagingHandler<CompanyShareHolderDto, CompanyShareHolder, GetPagingCompanyShareHolderQuery, ICompanyShareHolderService>
    {
        public GetPagingCompanyShareHolderHandler(ICompanyShareHolderService service, IMapper mapper) : base(service, mapper)
        {
        }
    }
}
