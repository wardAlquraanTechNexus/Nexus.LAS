using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.CompanyEmailDTOs;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyEmailUseCases;

public class UpsertCompanyEmailHandler: IRequestHandler<BulkUpsertCompanyEmailCommand, List<CompanyEmailDto>>
{
    private readonly ICompanyEmailService _companyEmailService;
    private readonly IMapper _mapper;
    public UpsertCompanyEmailHandler(ICompanyEmailService companyEmailService, IMapper mapper) 
    {
        _companyEmailService = companyEmailService;
        _mapper = mapper;   
    }
    public async Task<List<CompanyEmailDto>> Handle(BulkUpsertCompanyEmailCommand command , CancellationToken cancellationToken)
    {
        var companiesEmail = command.Commands.Select(cmd => _mapper.Map<CompanyEmail>(cmd)).ToList();
        var companyEmailsRes = await _companyEmailService.BulkUpsertAsync(companiesEmail);
        return companyEmailsRes.Select(e => _mapper.Map<CompanyEmailDto>(e)).ToList();

    }
}
