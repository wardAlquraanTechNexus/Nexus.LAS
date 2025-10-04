using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionInvoiceUseCases.Queries.GetPaging
{
    public class GetPagingTransactionInvoiceQuery : GetBasePagingQuery<TransactionInvoiceDto>
    {
        public int? TransactionId { get; set; } = null!;
        public int? LawFirmId { get; set; } = null!;
    }
}