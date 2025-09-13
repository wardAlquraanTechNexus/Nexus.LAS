using Nexus.LAS.Application.DTOs.CompanyBoardMemberDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.CompanyBoardMemberUseCases.Queries.GetPaging
{
    public class GetPagingCompanyBoardMemberQuery : GetBasePagingQuery<CompanyBoardMemberDto>
    {
        public int? CompanyId { get; set; }
        public int? PersonId { get; set; }
    }
}
