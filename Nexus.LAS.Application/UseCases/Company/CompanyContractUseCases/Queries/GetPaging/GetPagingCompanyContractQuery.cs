using Nexus.LAS.Application.DTOs.CompanyContractDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.CompanyContractUseCases.Queries.GetPaging
{
    public class GetPagingCompanyContractQuery: GetBasePagingQuery<CompanyContractDto>
    {
        public int CompanyId { get; set; }
    }
}
