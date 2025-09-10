using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyChamberOfCommerceDTOs;
using Nexus.LAS.Application.UseCases.CompanyChamberOfCommerceUseCases.Commands.CreateCompanyChamberOfCommerce;
using Nexus.LAS.Application.UseCases.CompanyChamberOfCommerceUseCases.Commands.UpdateCompanyChamberOfCommerce;
using Nexus.LAS.Application.UseCases.CompanyUseCases.CompanyChamberOfCommerceUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.Contracts.Presistence.Services;

public interface ICompanyChamberOfCommerceService:IGenericService<CompanyChamberOfCommerce>
{
    Task<PagingResult<CompanyChamberOfCommerceDto>> SearhDtoAsync(GetPagingCompanyChamberOfCommerceQuery query);
    Task<int> CreateCompanyChamberOfCommerce(CreateCompanyChamberOfCommerceCommand command);
    Task<bool> UpdateCompanyChamberOfCommerce(UpdateCompanyChamberOfCommerceCommand command);
}
