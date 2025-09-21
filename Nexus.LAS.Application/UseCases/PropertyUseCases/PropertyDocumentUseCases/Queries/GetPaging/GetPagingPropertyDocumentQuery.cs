using Nexus.LAS.Application.DTOs.PropertyDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyDocumentUseCases.Queries.GetPaging
{
    public class GetPagingPropertyDocumentQuery : GetBasePagingQuery<PropertyDocumentDto>
    {
        public int Id { get; set; }
        public int? PropertyId { get; set; }
    }
}