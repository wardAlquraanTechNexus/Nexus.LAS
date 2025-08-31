using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyShareHolderDTOs;
using Nexus.LAS.Application.UseCases.CompanyShareHolderUseCases.Queries;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.Contracts.Presistence.Services;

public interface ICompanyShareHolderService:IGenericService<CompanyShareHolder>
{
    Task<PagingResult<CompanyShareHolderDto>> SearhDtoAsync(GetPagingCompanyShareHolderQuery query);
    Task<long> SumActiveSharesAsync(int company, int? excludeShareHolderId = null);
}
