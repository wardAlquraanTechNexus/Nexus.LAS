using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.PropertyDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Domain.Entities.PropertyEntities;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyLinkUseCases.Queries.GetPaging
{
    public class GetPagingPropertyLinkHandler : GetBasePagingHandler<PropertyLinkDto, PropertyLink, GetPagingPropertyLinkQuery, IPropertyLinkService>
    {
        public GetPagingPropertyLinkHandler(IPropertyLinkService service, IMapper mapper) : base(service, mapper)
        {
        }

        public override async Task<PagingResult<PropertyLinkDto>> Handle(GetPagingPropertyLinkQuery request, CancellationToken cancellationToken)
        {
            return await _service.GetPagingPropertyLinks(request);

        }
    }
}