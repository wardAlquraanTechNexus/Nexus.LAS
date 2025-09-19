using Nexus.LAS.Application.Contracts.Presistence._Repositories.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.PropertyEntities;

namespace Nexus.LAS.Application.Contracts.Presistence._Repositories
{
    public interface IPropertyRepo : IGenericRepo<Property>
    {
        Task<PagingResult<Property>> GetPagingProperties(GetPagingPropertyQuery propertyQuery);
    }
}