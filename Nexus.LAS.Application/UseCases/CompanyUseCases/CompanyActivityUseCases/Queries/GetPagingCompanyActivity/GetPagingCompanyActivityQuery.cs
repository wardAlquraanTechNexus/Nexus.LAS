using MediatR;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyActivityDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.CompanyActivityUseCases.Queries
{
    public class GetPagingCompanyActivityQuery: GetBasePagingQuery<CompanyActivityDto>
    {
        public int CompanyId { get; set; }
    }
}
