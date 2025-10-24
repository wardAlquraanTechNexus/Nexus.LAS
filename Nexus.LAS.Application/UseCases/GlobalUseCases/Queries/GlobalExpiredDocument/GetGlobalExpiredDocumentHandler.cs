using MediatR;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CommonDTOs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.GlobalUseCases.Queries.GlobalExpiredDocument
{
    public class GetGlobalExpiredDocumentHandler: IRequestHandler<GetGlobalExpiredDocumentQuery , PagingResult<GlobalDocumentExpiredDto>>
    {
        private readonly IGlobalRepo _globalRepo;

        public GetGlobalExpiredDocumentHandler(IGlobalRepo globalRepo)
        {
            _globalRepo = globalRepo;
        }

        public async Task<PagingResult<GlobalDocumentExpiredDto>> Handle(GetGlobalExpiredDocumentQuery request, CancellationToken cancellationToken)
        {
            return await _globalRepo.GlobalDocumentExpired(request);
        }
    }
}
