using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Domain.Entities.TransactionEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionRegisterUseCases.Queries.GetPaging
{
    internal class GetPagingTransactionRegisterHandler : GetBasePagingHandler<TransactionRegisterDto, TransactionRegister, GetPagingTransactionRegisterQuery, ITransactionRegisterService>
    {
        public GetPagingTransactionRegisterHandler(ITransactionRegisterService service, IMapper mapper)
            : base(service, mapper)
        {
        }

        public override async Task<PagingResult<TransactionRegisterDto>> Handle(GetPagingTransactionRegisterQuery request, CancellationToken cancellationToken)
        {
            return await _service.GetPaging(request);
        }
    }
}
