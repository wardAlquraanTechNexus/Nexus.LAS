using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.CompanyEmailDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.SearchAllBase;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyEmailUseCases.Queries
{
    public class GetAllCompanyEmailHandler : SearchAllBaseHandler<CompanyEmailDto, CompanyEmail, GetAllCompanyEmailQuery, ICompanyEmailService>
    {
        public GetAllCompanyEmailHandler(ICompanyEmailService service, IMapper mapper) : base(service, mapper)
        {
        }
    }
}
