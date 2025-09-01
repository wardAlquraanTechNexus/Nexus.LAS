using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.CompanyActivityDTOs;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyActivityUseCases;

public class UpsertCompanyActivityHandler: IRequestHandler<BulkUpsertCompanyActivityCommand, List<CompanyActivityDto>>
{
    private readonly ICompanyActivityService _companyActivityService;
    private readonly IMapper _mapper;
    public UpsertCompanyActivityHandler(ICompanyActivityService companyActivityService, IMapper mapper) 
    {
        _companyActivityService = companyActivityService;
        _mapper = mapper;   
    }
    public async Task<List<CompanyActivityDto>> Handle(BulkUpsertCompanyActivityCommand command , CancellationToken cancellationToken)
    {
        var companiesActivity = command.Commands.Select(cmd => _mapper.Map<CompanyActivity>(cmd)).ToList();
        var companyActivitysRes = await _companyActivityService.BulkUpsertAsync(companiesActivity);
        return companyActivitysRes.Select(e => _mapper.Map<CompanyActivityDto>(e)).ToList();

    }
}
