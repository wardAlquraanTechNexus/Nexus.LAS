using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.GroupMenuDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Domain.Entities.Lookup;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.Lookup.Queries.GetAllMenusByGroup
{
    public class GetAllMenusByGroupHandler : GetBasePagingHandler<GroupMenuDTO, GroupMenu, GetAllMenusByGroupQuery, IGroupMenuService>
    {
        public GetAllMenusByGroupHandler(IGroupMenuService service, IMapper mapper) : base(service, mapper)
        {
        }

        public override async Task<PagingResult<GroupMenuDTO>> Handle(GetAllMenusByGroupQuery request, CancellationToken cancellationToken)
        {
            return await _service.GetAllMenusByGroup(request);
        }
    }
}
