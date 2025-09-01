using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.CompanyBoardMemberDTOs;
using Nexus.LAS.Application.DTOs.CompanyDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.CompanyBoardMemberUseCases.Queries.GetPaging
{
    internal class GetPagingCompanyBoardMemberHandler : GetBasePagingHandler<CompanyBoardMemberDto, CompanyBoardMember, GetPagingCompanyBoardMemberQuery, ICompanyBoardMemberService>
    {
        public GetPagingCompanyBoardMemberHandler(ICompanyBoardMemberService service, IMapper mapper) : base(service, mapper)
        {
        }
    }
}
