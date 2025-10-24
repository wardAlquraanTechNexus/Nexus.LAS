using Nexus.LAS.Application.Contracts.Presistence._Repositories.Base;
using Nexus.LAS.Application.DTOs.PropertyDTOs;
using Nexus.LAS.Domain.Entities.PropertyEntities;

namespace Nexus.LAS.Application.Contracts.Presistence._Repositories
{
    public interface IPropertyOwnerRepo : IGenericRepo<PropertyOwner>
    {
        Task<List<PropertyOwnerDto>> GetOwnersByPropertyId(int propertyId);
    }
}