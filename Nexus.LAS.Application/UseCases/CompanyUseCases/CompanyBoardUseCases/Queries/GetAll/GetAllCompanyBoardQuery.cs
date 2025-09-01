using Nexus.LAS.Application.DTOs.CompanyDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.SearchAllBase;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.CompanyBoardUseCases.Queries
{
    public class GetAllCompanyBoardQuery:SearchAllBaseQuery<CompanyBoardDto>
    {
        public int CompanyId { get; set; }
    }
}
