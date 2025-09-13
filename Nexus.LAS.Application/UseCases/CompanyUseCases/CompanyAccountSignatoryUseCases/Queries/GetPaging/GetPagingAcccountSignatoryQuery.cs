using Nexus.LAS.Application.DTOs.CompanyDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;

namespace Nexus.LAS.Application.UseCases.CompanyAccountSignatoryUseCases.Queries.GetPaging
{
    public class GetPagingAcccountSignatoryQuery: GetBasePagingQuery<CompanyAccountSignatoryDTO>
    {
        public int? CompanyBankAccountId { get; set; }
        public int? CompanyId { get; set; }
        public int? PersonId { get; set; }
    }
}
