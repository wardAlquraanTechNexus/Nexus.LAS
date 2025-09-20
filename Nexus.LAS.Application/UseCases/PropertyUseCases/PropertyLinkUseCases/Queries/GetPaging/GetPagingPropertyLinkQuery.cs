using Nexus.LAS.Application.DTOs.PropertyDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyLinkUseCases.Queries.GetPaging
{
    public class GetPagingPropertyLinkQuery : GetBasePagingQuery<PropertyLinkDto>
    {
        public int? PropertyLinksValue { get; set; }
    }
}