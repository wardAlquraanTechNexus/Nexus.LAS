using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.PropertyDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Domain.Entities.PropertyEntities;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyOwnerUseCases.Queries.GetPaging
{
    public class GetPagingPropertyOwnerHandler : GetBasePagingHandler<PropertyOwnerDto, PropertyOwner, GetPagingPropertyOwnerQuery, IPropertyOwnerService>
    {
        public GetPagingPropertyOwnerHandler(IPropertyOwnerService service, IMapper mapper) : base(service, mapper)
        {
        }
    }
}