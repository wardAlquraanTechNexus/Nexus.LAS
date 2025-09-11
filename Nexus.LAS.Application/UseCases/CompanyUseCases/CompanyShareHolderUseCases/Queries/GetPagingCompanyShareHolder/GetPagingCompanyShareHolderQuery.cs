using Nexus.LAS.Application.DTOs.CompanyActivityDTOs;
using Nexus.LAS.Application.DTOs.CompanyShareHolderDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.CompanyShareHolderUseCases.Queries
{
    public class GetPagingCompanyShareHolderQuery : GetBasePagingQuery<CompanyShareHolderDto>
    {
        public int? CompanyId { get; set; }
        public string? RegistersIdc { get; set; }
        public int? RegistersIdn { get; set; }
    }
}
