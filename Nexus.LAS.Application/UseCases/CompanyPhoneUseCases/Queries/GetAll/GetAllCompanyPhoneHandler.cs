using AutoMapper;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.DTOs.CompanyPhoneDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.SearchAllBase;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyPhoneUseCases.Queries.GetPaging
{
    public class GetAllCompanyPhoneHandler : SearchAllBaseHandler<CompanyPhoneDto, CompanyPhone, GetAllCompanyPhoneQuery, ICompanyPhoneService>
    {
        public GetAllCompanyPhoneHandler(ICompanyPhoneService service, IMapper mapper) : base(service, mapper)
        {
        }
    }
}
