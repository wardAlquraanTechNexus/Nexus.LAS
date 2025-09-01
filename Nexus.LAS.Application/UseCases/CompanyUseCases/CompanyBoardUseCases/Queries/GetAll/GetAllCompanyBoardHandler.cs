using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.CompanyDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.SearchAllBase;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.CompanyBoardUseCases.Queries
{
    internal class GetAllCompanyBoardHandler : SearchAllBaseHandler<CompanyBoardDto, CompanyBoard, GetAllCompanyBoardQuery, ICompanyBoardService>
    {
        public GetAllCompanyBoardHandler(ICompanyBoardService service, IMapper mapper) : base(service, mapper)
        {
        }
    }
}
