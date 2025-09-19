using Nexus.LAS.Application.DTOs.PropertyDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyOwnerUseCases.Queries.GetPaging
{
    public class GetPagingPropertyOwnerQuery : GetBasePagingQuery<PropertyOwnerDto>
    {
        public int? PropertyId { get; set; }
    }
}