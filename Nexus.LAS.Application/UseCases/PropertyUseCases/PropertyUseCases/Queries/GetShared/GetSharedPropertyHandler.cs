using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.PropertyDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Domain.Entities.PropertyEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyUseCases.Queries.GetShared
{
    public class GetSharedPropertyHandler : GetBasePagingHandler<SharedPropertyDTO, Property, GetSharedPropertyQuery, IPropertyService>
    {
        public GetSharedPropertyHandler(IPropertyService service, IMapper mapper) : base(service, mapper)
        {
        }

        public override async Task<PagingResult<SharedPropertyDTO>> Handle(GetSharedPropertyQuery request, CancellationToken cancellationToken)
        {
            return await _service.GetSharedProperties(request);
        }
    }
}
