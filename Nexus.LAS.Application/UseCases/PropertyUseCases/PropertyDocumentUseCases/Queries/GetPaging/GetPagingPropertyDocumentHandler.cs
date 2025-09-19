using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.PropertyDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Domain.Entities.PropertyEntities;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyDocumentUseCases.Queries.GetPaging
{
    public class GetPagingPropertyDocumentHandler : GetBasePagingHandler<PropertyDocumentDto, PropertyDocument, GetPagingPropertyDocumentQuery, IPropertyDocumentService>
    {
        public GetPagingPropertyDocumentHandler(IPropertyDocumentService service, IMapper mapper) : base(service, mapper)
        {
        }
    }
}