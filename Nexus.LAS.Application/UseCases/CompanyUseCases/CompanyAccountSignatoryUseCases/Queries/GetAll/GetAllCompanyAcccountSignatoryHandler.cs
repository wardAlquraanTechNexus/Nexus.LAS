using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.CompanyDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.SearchAllBase;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyAccountSignatoryUseCases.Queries.GetAll
{
    internal class GetAllCompanyAcccountSignatoryHandler : SearchAllBaseHandler<CompanyAccountSignatoryDTO , CompanyAccountSignatory, GetAllCompanyAcccountSignatoryQuery, ICompanyAccountSignatoryService>
    {
        public GetAllCompanyAcccountSignatoryHandler(ICompanyAccountSignatoryService service, AutoMapper.IMapper mapper) : base(service, mapper)
        {
        }
    }
    
}
