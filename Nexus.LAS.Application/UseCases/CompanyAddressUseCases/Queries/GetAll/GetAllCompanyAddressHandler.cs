using AutoMapper;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.DTOs.CompanyAddressDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.SearchAllBase;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyAddressUseCases.Queries.GetPaging
{
    public class GetAllCompanyAddressHandler : SearchAllBaseHandler<CompanyAddressDto, CompanyAddress, GetAllCompanyAddressQuery, ICompanyAddressService>
    {
        public GetAllCompanyAddressHandler(ICompanyAddressService service, IMapper mapper) : base(service, mapper)
        {
        }
    }
}
