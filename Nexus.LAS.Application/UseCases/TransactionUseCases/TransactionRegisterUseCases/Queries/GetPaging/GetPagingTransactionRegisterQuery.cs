using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionRegisterUseCases.Queries.GetPaging
{
    public class GetPagingTransactionRegisterQuery : GetBasePagingQuery<TransactionRegisterDto>
    {
        public int? TransactionId { get; set; }
        public string? RegisterIdc { get; set; }
        public int? RegisterId { get; set; }
        public string OrderBy { get; set; } = "Id";
        public string OrderDir { get; set; } = "desc";

    }
}
