using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.CompanyPhoneDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetAllBase;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyPhoneUseCases.Queries.GetPaging
{
    public class GetAllCompanyPhoneHandler : GetAllBaseHandler<CompanyPhoneDto, CompanyPhone, GetAllCompanyPhoneQuery, ICompanyPhoneService>
    {
        public GetAllCompanyPhoneHandler(ICompanyPhoneService service, IMapper mapper) : base(service, mapper)
        {
        }
    }
}
