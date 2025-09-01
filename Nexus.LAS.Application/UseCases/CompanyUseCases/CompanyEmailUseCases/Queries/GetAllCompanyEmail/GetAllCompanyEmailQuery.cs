using Nexus.LAS.Application.DTOs.CompanyEmailDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.SearchAllBase;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.CompanyEmailUseCases.Queries
{
    public class GetAllCompanyEmailQuery : SearchAllBaseQuery<CompanyEmailDto>
    {
        public int? CompanyId { get; set; }
    }
}
