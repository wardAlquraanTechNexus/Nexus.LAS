using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyUseCases.Commands;



public class CreateCompanyCommandHandler : IRequestHandler<CreateCompanyCommand, int>
{
    private readonly ICompanyService _companyService;
    private readonly IMapper _mapper;

    public CreateCompanyCommandHandler(ICompanyService companyService, IMapper mapper)
    {
        _companyService = companyService;
        _mapper = mapper;
    }

    public async Task<int> Handle(CreateCompanyCommand command, CancellationToken cancellationToken)
    {
        Company company = _mapper.Map<Company>(command);

        return await _companyService.CreateAsync(company);
    }
}