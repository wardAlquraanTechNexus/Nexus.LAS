using Nexus.LAS.Application.DTOs.CompanyActivityDTOs;
using Nexus.LAS.Application.DTOs.CompanyCapitalDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.CompanyCapitalUseCases.Queries.GetPagingCompanyCapital
{
    public class GetPagingCompanyCapitalQueryy : GetBasePagingQuery<CompanyCapitalDto>
    {
        public int CompanyId { get; set; }
    }
}
