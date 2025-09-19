using Nexus.LAS.Application.DTOs.PropertyDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertiesStatusUseCases.Queries.GetPaging
{
    public class GetPagingPropertyStatusQuery : GetBasePagingQuery<PropertyStatusDto>
    {
        public int? PropertyId { get; set; }
    }
}