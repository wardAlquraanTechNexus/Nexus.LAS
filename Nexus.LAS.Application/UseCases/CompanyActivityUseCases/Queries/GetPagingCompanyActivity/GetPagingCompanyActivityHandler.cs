using AutoMapper;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.DTOs.CompanyActivityDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.CompanyActivityUseCases.Queries
{
    public class GetPagingCompanyActivityHandler : GetBasePagingHandler<CompanyActivityDto, CompanyActivity, GetPagingCompanyActivityQuery, ICompanyActivityService>
    {
        public GetPagingCompanyActivityHandler(ICompanyActivityService service, IMapper mapper) : base(service, mapper)
        {
        }
    }
}
