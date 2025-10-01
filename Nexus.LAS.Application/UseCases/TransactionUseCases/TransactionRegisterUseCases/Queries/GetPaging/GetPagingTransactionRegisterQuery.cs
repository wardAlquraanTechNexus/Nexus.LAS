using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionRegisterUseCases.Queries.GetPaging
{
    public class GetPagingTransactionRegisterQuery : GetBasePagingQuery<TransactionRegisterDto>
    {
        public int TransactionId { get; set; }
    }
}