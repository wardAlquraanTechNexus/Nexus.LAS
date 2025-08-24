using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyPersonInChargeDTOs;
using Nexus.LAS.Application.UseCases.CompanyPersonInChargeUseCases.Queries;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.Contracts;

public interface ICompanyPersonInChargeService:IGenericService<CompanyPersonInCharge>
{

    Task<PagingResult<CompanyPersonInChargeDto>> GetPaging(GetPagingCompanyPersonInChargeQuery query);

}
