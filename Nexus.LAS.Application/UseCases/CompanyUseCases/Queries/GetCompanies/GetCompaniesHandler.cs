using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyDTOs;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyUseCases.Queries;

public class GetCompaniesHandler : IRequestHandler<GetCompaniesQuery,PagingResult<GetCompanyDto>>
{
    private readonly ICompanyService _companyService;
    private readonly IMapper _mapper;
    public GetCompaniesHandler(ICompanyService companyService, IMapper mapper) 
    {
        _mapper = mapper;
        _companyService = companyService;
    }
    public async Task<PagingResult<GetCompanyDto>> Handle(GetCompaniesQuery request, CancellationToken cancellationToken)

    {
        PagingResult<Company> companies = await _companyService.GetCompanies(request);
        PagingResult<GetCompanyDto> companyDtos = _mapper.Map<PagingResult<GetCompanyDto>>(companies);
        return companyDtos;
    }
}
