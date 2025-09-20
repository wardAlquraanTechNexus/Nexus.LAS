using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.PropertyDTOs;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyLinkUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.PropertyEntities;

namespace Nexus.LAS.Application.Contracts.Presistence.Services;

public interface IPropertyLinkService : IGenericService<PropertyLink>
{
    Task<PagingResult<PropertyLinkDto>> GetPagingPropertyLinks(GetPagingPropertyLinkQuery query);
}