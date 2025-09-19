using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.PropertyDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Domain.Entities.PropertyEntities;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertiesStatusUseCases.Queries.GetPaging
{
    public class GetPagingPropertyStatusHandler : GetBasePagingHandler<PropertyStatusDto, PropertyStatus, GetPagingPropertyStatusQuery, IPropertyStatusService>
    {
        public GetPagingPropertyStatusHandler(IPropertyStatusService service, IMapper mapper) : base(service, mapper)
        {
        }
    }
}