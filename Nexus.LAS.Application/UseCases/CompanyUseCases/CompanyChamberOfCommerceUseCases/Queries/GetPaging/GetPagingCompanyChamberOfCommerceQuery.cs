using Nexus.LAS.Application.DTOs.CompanyChamberOfCommerceDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;

namespace Nexus.LAS.Application.UseCases.CompanyUseCases.CompanyChamberOfCommerceUseCases.Queries.GetPaging
{
    public class GetPagingCompanyChamberOfCommerceQuery : GetBasePagingQuery<CompanyChamberOfCommerceDto>
    {
        // Add any filter properties if needed
        public int CompanyIdn { get; set; }
        public int? CciExpiryDatePeriod { get; set; }
        public bool? CciExpiryActiveReminder { get; set; }

    }
}