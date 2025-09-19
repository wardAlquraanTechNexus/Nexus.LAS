using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.PropertyDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Domain.Entities.PropertyEntities;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyUseCases.Queries.GetPaging
{
    public class GetPagingPropertyHandler : GetBasePagingHandler<PropertyDto, Property, GetPagingPropertyQuery, IPropertyService>
    {
        public GetPagingPropertyHandler(IPropertyService service, IMapper mapper) : base(service, mapper)
        {
        }

        public override async Task<PagingResult<PropertyDto>> Handle(GetPagingPropertyQuery request, CancellationToken cancellationToken)
        {
            var data = await _service.GetPagingProperties(request);

            return new PagingResult<PropertyDto>(data.Collection.Select(item => _mapper.Map<PropertyDto>(item)).ToList(), data.Page, data.PageSize , data.TotalRecords);
        }
    }
}