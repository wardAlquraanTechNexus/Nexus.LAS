using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.CompanyCapitalDTOs;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyCapitalUseCases;

public class UpsertCompanyCapitalHandler: IRequestHandler<BulkUpsertCompanyCapitalCommand, List<CompanyCapitalDto>>
{
    private readonly ICompanyCapitalService _companyCapitalService;
    private readonly IMapper _mapper;
    public UpsertCompanyCapitalHandler(ICompanyCapitalService companyCapitalService, IMapper mapper) 
    {
        _companyCapitalService = companyCapitalService;
        _mapper = mapper;   
    }
    public async Task<List<CompanyCapitalDto>> Handle(BulkUpsertCompanyCapitalCommand command , CancellationToken cancellationToken)
    {
        var companiesCapital = command.Commands.Select(cmd => _mapper.Map<CompanyCapital>(cmd)).ToList();
        var companyCapitalsRes = await _companyCapitalService.BulkUpsertAsync(companiesCapital);
        return companyCapitalsRes.Select(e => _mapper.Map<CompanyCapitalDto>(e)).ToList();

    }
}
