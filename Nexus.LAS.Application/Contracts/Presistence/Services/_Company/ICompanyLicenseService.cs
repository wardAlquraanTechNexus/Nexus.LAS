using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyLicenseDTOs;
using Nexus.LAS.Application.UseCases.CompanyLicenseUseCases.Commands.CreateCompanyLicense;
using Nexus.LAS.Application.UseCases.CompanyLicenseUseCases.Commands.UpdateCompanyLicense;
using Nexus.LAS.Application.UseCases.CompanyLicenseUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.Contracts.Presistence.Services;

public interface ICompanyLicenseService:IGenericService<CompanyLicense>
{
    Task<PagingResult<CompanyLicenseDto>> GetPaging(GetCompanyLicensePagingQuery param);
    Task<int> CreateCompanyLicense(CreateCompanyLicenseCommand command);
    Task<bool> UpdateCompanyLicense(UpdateCompanyLicenseCommand command);
}
