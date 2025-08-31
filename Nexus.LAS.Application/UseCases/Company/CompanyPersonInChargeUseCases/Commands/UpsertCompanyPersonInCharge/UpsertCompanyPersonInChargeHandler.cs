using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.CompanyPersonInChargeDTOs;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyPersonInChargeUseCases;

public class UpsertCompanyPersonInChargeHandler: IRequestHandler<BulkUpsertCompanyPersonInChargeCommand, List<CompanyPersonInChargeDto>>
{
    private readonly ICompanyPersonInChargeService _companyPersonInChargeService;
    private readonly IMapper _mapper;
    public UpsertCompanyPersonInChargeHandler(ICompanyPersonInChargeService companyPersonInChargeService, IMapper mapper) 
    {
        _companyPersonInChargeService = companyPersonInChargeService;
        _mapper = mapper;   
    }
    public async Task<List<CompanyPersonInChargeDto>> Handle(BulkUpsertCompanyPersonInChargeCommand command , CancellationToken cancellationToken)
    {
        var companiesPersonInCharge = command.Commands.Select(cmd => _mapper.Map<CompanyPersonInCharge>(cmd)).ToList();
        var companyPersonInChargesRes = await _companyPersonInChargeService.BulkUpsertAsync(companiesPersonInCharge);
        return companyPersonInChargesRes.Select(e => _mapper.Map<CompanyPersonInChargeDto>(e)).ToList();

    }
}
