using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.CompanyDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.CompanyBoardUseCases.Queries.GetPaging
{
    internal class GetPagingCompanyBoardHandler : GetBasePagingHandler<CompanyBoardDto, CompanyBoard, GetPagingCompanyBoardQuery, ICompanyBoardService>
    {
        public GetPagingCompanyBoardHandler(ICompanyBoardService service, IMapper mapper) : base(service, mapper)
        {
        }
    }

}
