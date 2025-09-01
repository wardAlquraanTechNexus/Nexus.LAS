using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.CompanyOtherContractDTOs;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyOtherContractUseCases;

public class UpsertCompanyOtherContractHandler: IRequestHandler<BulkUpsertCompanyOtherContractCommand, List<CompanyOtherContractDto>>
{
    private readonly ICompanyOtherContractService _companyOtherContractService;
    private readonly IMapper _mapper;
    public UpsertCompanyOtherContractHandler(ICompanyOtherContractService companyOtherContractService, IMapper mapper) 
    {
        _companyOtherContractService = companyOtherContractService;
        _mapper = mapper;   
    }
    public async Task<List<CompanyOtherContractDto>> Handle(BulkUpsertCompanyOtherContractCommand command , CancellationToken cancellationToken)
    {
        var companiesOtherContract = command.Commands.Select(cmd => _mapper.Map<CompaniesOtherContract>(cmd)).ToList();
        var companyOtherContractsRes = await _companyOtherContractService.BulkUpsertAsync(companiesOtherContract);
        return companyOtherContractsRes.Select(e => _mapper.Map<CompanyOtherContractDto>(e)).ToList();

    }
}
