using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.PropertyEntities;

namespace Nexus.LAS.Application.Contracts.Presistence.Services;

public interface IPropertyService : IGenericService<Property>
{
    Task<PagingResult<Property>> GetPagingProperties(GetPagingPropertyQuery propertyQuery);
}