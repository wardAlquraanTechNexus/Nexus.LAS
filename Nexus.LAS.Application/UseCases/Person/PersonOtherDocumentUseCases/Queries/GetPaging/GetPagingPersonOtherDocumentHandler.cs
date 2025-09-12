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

namespace Nexus.LAS.Application.UseCases.PersonOtherDocumentUseCases.Queries.GetPaging
{
    internal class GetPagingPersonOtherDocumentHandler : GetBasePagingHandler<PersonOtherDocumentDTO, PersonsOtherDocument, GetPagingPersonOtherDocumentQuery, IPersonOtherDocumentService>
    {
        public GetPagingPersonOtherDocumentHandler(IPersonOtherDocumentService service, IMapper mapper) : base(service, mapper)
        {
        }

        public override async Task<PagingResult<PersonOtherDocumentDTO>> Handle(GetPagingPersonOtherDocumentQuery request, CancellationToken cancellationToken)
        {
            return await _service.GetPaging(request);
        }
    }
}
