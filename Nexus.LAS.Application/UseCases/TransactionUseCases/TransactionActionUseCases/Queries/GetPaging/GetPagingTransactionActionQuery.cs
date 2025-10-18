using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionActionUseCases.Queries.GetPaging
{
    public class GetPagingTransactionActionQuery : GetBasePagingQuery<TransactionActionDto>
    {
        public int TransactionId { get; set; }
        public int? PersonId { get; set; }
        public string OrderBy { get; set; } = "Id";
        public string OrderDir { get; set; } = "desc";
    }
}