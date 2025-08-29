using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.Contracts;

public interface ICompanyCapitalService : IGenericService<CompanyCapital>
{
    Task ValidateSingleActiveCapital(CompanyCapital capital);
    Task<bool> HasActiveCapitalAsync(int companyId);
    Task<CompanyCapital?> GetActiveCapitalByCompanyIdAsync(int companyId);
}
