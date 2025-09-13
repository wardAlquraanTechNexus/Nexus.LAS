using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyDTOs;
using Nexus.LAS.Application.UseCases.CompanyAccountSignatoryUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.Contracts.Presistence.Services;

public interface ICompanyAccountSignatoryService: IGenericService<CompanyAccountSignatory>
{
    Task<PagingResult<CompanyAccountSignatoryDTO>> SearchDtoAsync(GetPagingAcccountSignatoryQuery query);
}
