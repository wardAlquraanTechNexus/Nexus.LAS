using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.CompanyPhoneDTOs;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyPhoneUseCases;

public class UpsertCompanyPhoneHandler: IRequestHandler<BulkUpsertCompanyPhoneCommand , List<CompanyPhoneDto>>
{
    private readonly ICompanyPhoneService _companyPhoneService;
    private readonly IMapper _mapper;

    public UpsertCompanyPhoneHandler(ICompanyPhoneService companyPhoneService, IMapper mapper)
    {
        _companyPhoneService = companyPhoneService;
        _mapper = mapper;
    }

    public async Task<List<CompanyPhoneDto>> Handle(BulkUpsertCompanyPhoneCommand command, CancellationToken cancellationToken)
    {
        var companiesEmail = command.Commands.Select(cmd => _mapper.Map<CompanyPhone>(cmd)).ToList();
        var companyEmailsRes = await _companyPhoneService.BulkUpsertAsync(companiesEmail);
        return companyEmailsRes.Select(e => _mapper.Map<CompanyPhoneDto>(e)).ToList();
    }
}
