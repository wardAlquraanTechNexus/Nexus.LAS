using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.DTOs.CompanyDTOs;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyUseCases.Commands;



public class UpdateCompanyCommandHandler : IRequestHandler<UpdateCompanyCommand, GetCompaniesDto>
{

    private readonly ICompanyService _companyService;
    private readonly IMapper _mapper;

    public UpdateCompanyCommandHandler(ICompanyService companyService, IMapper mapper)
    {
        _companyService = companyService;
        _mapper = mapper;
    }

    public async Task<GetCompaniesDto> Handle(UpdateCompanyCommand command, CancellationToken cancellationToken)
    {

        Company company = _mapper.Map<Company>(command);
        company = await _companyService.UpdateCompanyAsync(company);

        return _mapper.Map<GetCompaniesDto>(company);

    }
}
