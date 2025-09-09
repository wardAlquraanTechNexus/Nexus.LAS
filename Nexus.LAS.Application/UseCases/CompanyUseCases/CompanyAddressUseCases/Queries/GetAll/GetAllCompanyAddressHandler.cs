using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.CompanyAddressDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetAllBase;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyAddressUseCases.Queries.GetPaging
{
    public class GetAllCompanyAddressHandler : GetAllBaseHandler<CompanyAddressDto, CompanyAddress, GetAllCompanyAddressQuery, ICompanyAddressService>
    {
        public GetAllCompanyAddressHandler(ICompanyAddressService service, IMapper mapper) : base(service, mapper)
        {
        }
    }
}
