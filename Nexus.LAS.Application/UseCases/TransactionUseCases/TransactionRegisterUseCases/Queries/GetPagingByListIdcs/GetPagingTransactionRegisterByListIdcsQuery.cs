using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionRegisterUseCases.Queries.GetPaging
{
    public class GetPagingTransactionRegisterByListIdcsQuery : GetBasePagingQuery<TransactionRegisterDto>
    {
        public int? TransactionId { get; set; }
        public string? RegisterIdcs 
        { 
            get => _registerIdcs;
            set
            {
                if(string.IsNullOrEmpty(value))
                {
                    _registerIdcs = value;
                    RegisterIdcList = new List<string>();
                }
                else
                {
                    _registerIdcs = value;
                    RegisterIdcList = _registerIdcs.Split(',').ToList();
                }
            }
        } // Comma-separated list of RegisterIdcs
        public string? _registerIdcs;
        public List<string>? RegisterIdcList { get; set; } = new List<string>();
        public string OrderBy { get; set; } = "Id";
        public string OrderDir { get; set; } = "desc";

    }
}