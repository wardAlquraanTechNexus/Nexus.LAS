using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.Contracts.Presistence.Services;

public interface ICompanyActivityService:IGenericService<CompanyActivity>
{
    Task<bool> ExistsByCompanyAndActivityAsync(int companyId, int activity, int? excludeId = null);
}
