using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.CompanyDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetAllBase;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyBoardUseCases.Queries
{
    internal class GetAllCompanyBoardHandler : GetAllBaseHandler<CompanyBoardDto, CompanyBoard, GetAllCompanyBoardQuery, ICompanyBoardService>
    {
        public GetAllCompanyBoardHandler(ICompanyBoardService service, IMapper mapper) : base(service, mapper)
        {
        }
    }
}
