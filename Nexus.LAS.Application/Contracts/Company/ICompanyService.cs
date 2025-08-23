using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyDTOs;
using Nexus.LAS.Application.UseCases.CompanyUseCases.Queries;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.Contracts;

public interface ICompanyService:IGenericService<Company>
{
    Task<PagingResult<Company>> GetCompanies(GetCompaniesQuery companyQuery);
    Task<Company> UpdateCompanyAsync(Company entity);
    Task<int> BulkChangeStatus(List<int> companyIds, int status);
    Task<int> BulkChangePrivate(List<int> companyIds, bool isPrivate);
    Task<bool> IsCompanyEnglishNameUniqueAsync(string companyEnglishName, int? excludeId = null);
    Task<bool> IsCompanyArabicNameUniqueAsync(string companyArabicName, int? excludeId = null);
    Task<bool> IsCompanyShortNameUniqueAsync(string companyShortName, int? excludeId = null);
    Task<byte[]> ExportToPdf(int id);
    Task<CompanyDto> GetCompanyDto(int id);
}
