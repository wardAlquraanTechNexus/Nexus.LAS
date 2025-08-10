using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyDTOs;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyUseCases.Queries.GetAllActiveCompany
{
    internal class GetAllActiveCompaniesHandler : IRequestHandler<GetActiveCompaniesQuery, PagingResult<GetCompaniesDto>>
    {
        private readonly ICompanyService _companyService;
        private readonly IMapper _mapper;
        public GetAllActiveCompaniesHandler(ICompanyService companyService, IMapper mapper)
        {
            _mapper = mapper;
            _companyService = companyService;
        }
        public async Task<PagingResult<GetCompaniesDto>> Handle(GetActiveCompaniesQuery request, CancellationToken cancellationToken)

        {
            PagingResult<Company> companies = await _companyService.GetActiveCompanies(request);
            PagingResult<GetCompaniesDto> companyDtos = _mapper.Map<PagingResult<GetCompaniesDto>>(companies);
            return companyDtos;
        }
    }
}
