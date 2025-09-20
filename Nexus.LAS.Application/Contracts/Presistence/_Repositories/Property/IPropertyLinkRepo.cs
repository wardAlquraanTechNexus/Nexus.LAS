using Nexus.LAS.Application.Contracts.Presistence._Repositories.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.PropertyDTOs;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyLinkUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.PropertyEntities;

namespace Nexus.LAS.Application.Contracts.Presistence._Repositories
{
    public interface IPropertyLinkRepo : IGenericRepo<PropertyLink>
    {
        Task<PagingResult<PropertyLinkDto>> GetPagingPropertyLinks(GetPagingPropertyLinkQuery query);
    }
}