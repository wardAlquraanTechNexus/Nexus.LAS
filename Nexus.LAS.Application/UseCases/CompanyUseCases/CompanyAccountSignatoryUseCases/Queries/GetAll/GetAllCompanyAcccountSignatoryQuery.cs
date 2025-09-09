using Nexus.LAS.Application.DTOs.CompanyDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetAllBase;

namespace Nexus.LAS.Application.UseCases.CompanyAccountSignatoryUseCases.Queries.GetAll
{
    public class GetAllCompanyAcccountSignatoryQuery : GetAllBaseQuery<CompanyAccountSignatoryDTO>
    {
        public int CompanyBankAccountId { get; set; }
    }
}
