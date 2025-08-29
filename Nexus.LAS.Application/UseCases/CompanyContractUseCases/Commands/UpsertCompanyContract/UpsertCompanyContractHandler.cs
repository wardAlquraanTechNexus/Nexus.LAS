using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.DTOs.CompanyContractDTOs;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyContractUseCases;

public class UpsertCompanyContractHandler: IRequestHandler<BulkUpsertCompanyContractCommand, List<CompanyContractDto>>
{
    private readonly ICompanyContractService _companyContractService;
    private readonly IMapper _mapper;
    public UpsertCompanyContractHandler(ICompanyContractService companyContractService, IMapper mapper) 
    {
        _companyContractService = companyContractService;
        _mapper = mapper;   
    }
    public async Task<List<CompanyContractDto>> Handle(BulkUpsertCompanyContractCommand command , CancellationToken cancellationToken)
    {
        var companiesContract = command.Commands.Select(cmd => _mapper.Map<CompanyContract>(cmd)).ToList();
        var companyContractsRes = await _companyContractService.BulkUpsertAsync(companiesContract);
        return companyContractsRes.Select(e => _mapper.Map<CompanyContractDto>(e)).ToList();

    }
}
