using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;
using Nexus.LAS.Domain.Constants.Enums;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionActionUseCases.Queries.GetPaging
{
    public class GetPagingTransactionActionQuery : GetBasePagingQuery<TransactionActionDto>
    {
        public int? TransactionId { get; set; }
        public int? PersonId { get; set; }
        public string OrderBy { get; set; } = "Id";
        public string OrderDir { get; set; } = "desc";
        public string? Statuses { 
            get => _statuses;
            set
            {
                _statuses = value;
                if (!string.IsNullOrEmpty(_statuses))
                {
                    StatusesList = _statuses.Split(',').Select(s => Enum.Parse<TransactionActionStatus>(s.Trim(), true)).ToList();
                }
            }
        }
        private string? _statuses;
        public List<TransactionActionStatus>? StatusesList { get; set; }

    }
}