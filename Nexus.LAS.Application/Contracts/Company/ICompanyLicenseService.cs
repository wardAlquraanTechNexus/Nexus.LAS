using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.CompanyLicenseUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.Contracts;

public interface ICompanyLicenseService:IGenericService<CompanyLicense>
{
    Task<PagingResult<CompanyLicense>> GetPaging(GetCompanyLicensePagingQuery param);
}
