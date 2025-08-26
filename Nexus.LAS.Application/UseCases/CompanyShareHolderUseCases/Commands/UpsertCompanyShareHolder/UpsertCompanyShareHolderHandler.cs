using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.DTOs.CompanyShareHolderDTOs;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyShareHolderUseCases;

public class UpsertCompanyShareHolderHandler: IRequestHandler<BulkUpsertCompanyShareHolderCommand, List<CompanyShareHolderDto>>
{
    private readonly ICompanyShareHolderService _companyShareHolderService;
    private readonly IMapper _mapper;
    public UpsertCompanyShareHolderHandler(ICompanyShareHolderService companyShareHolderService, IMapper mapper) 
    {
        _companyShareHolderService = companyShareHolderService;
        _mapper = mapper;   
    }
    public async Task<List<CompanyShareHolderDto>> Handle(BulkUpsertCompanyShareHolderCommand command , CancellationToken cancellationToken)
    {
        var companiesShareHolder = command.Commands.Select(cmd => _mapper.Map<CompanyShareHolder>(cmd)).ToList();
        var companyShareHoldersRes = await _companyShareHolderService.BulkUpsertAsync(companiesShareHolder);
        return companyShareHoldersRes.Select(e => _mapper.Map<CompanyShareHolderDto>(e)).ToList();

    }
}
