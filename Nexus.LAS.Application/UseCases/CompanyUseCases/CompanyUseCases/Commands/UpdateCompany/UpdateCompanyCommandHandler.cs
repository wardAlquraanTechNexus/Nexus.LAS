using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.CompanyDTOs;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyUseCases.Commands;



public class UpdateCompanyCommandHandler : IRequestHandler<UpdateCompanyCommand, GetCompanyDto>
{

    private readonly ICompanyService _companyService;
    private readonly IMapper _mapper;

    public UpdateCompanyCommandHandler(ICompanyService companyService, IMapper mapper)
    {
        _companyService = companyService;
        _mapper = mapper;
    }

    public async Task<GetCompanyDto> Handle(UpdateCompanyCommand command, CancellationToken cancellationToken)
    {

        Company company = _mapper.Map<Company>(command);
        company = await _companyService.UpdateCompanyAsync(company);

        return _mapper.Map<GetCompanyDto>(company);

    }
}
