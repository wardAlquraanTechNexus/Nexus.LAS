using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Domain.Entities.PersonEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.Queries.GetPaging
{
    internal class GetPersonIdDetailPagingHandler : GetBasePagingHandler<PersonIdDetailDto, PersonsIDDetail, GetPersonIdDetailPagingQuery, IPersonIdDetailService>
    {
        public GetPersonIdDetailPagingHandler(IPersonIdDetailService service, IMapper mapper) : base(service, mapper)
        {
        }

        public override async Task<PagingResult<PersonIdDetailDto>> Handle(GetPersonIdDetailPagingQuery request, CancellationToken cancellationToken)
        {
            return await _service.GetPaging(request);
        }
    }
}
