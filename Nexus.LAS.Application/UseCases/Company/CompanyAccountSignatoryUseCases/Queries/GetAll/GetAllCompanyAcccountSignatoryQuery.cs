using Nexus.LAS.Application.DTOs.CompanyDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.SearchAllBase;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.CompanyAccountSignatoryUseCases.Queries.GetAll
{
    public class GetAllCompanyAcccountSignatoryQuery : SearchAllBaseQuery<CompanyAccountSignatoryDTO>
    {
        public int CompanyBankAccountId { get; set; }
    }
}
