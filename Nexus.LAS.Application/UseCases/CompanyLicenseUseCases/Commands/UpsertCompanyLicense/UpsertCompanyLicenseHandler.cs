using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.DTOs.CompanyLicenseDTOs;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyLicenseUseCases;

public class UpsertCompanyLicenseHandler: IRequestHandler<BulkUpsertCompanyLicenseCommand, List<CompanyLicenseDto>>
{
    private readonly ICompanyLicenseService _companyLicenseService;
    private readonly IMapper _mapper;
    public UpsertCompanyLicenseHandler(ICompanyLicenseService companyLicenseService, IMapper mapper) 
    {
        _companyLicenseService = companyLicenseService;
        _mapper = mapper;   
    }
    public async Task<List<CompanyLicenseDto>> Handle(BulkUpsertCompanyLicenseCommand command , CancellationToken cancellationToken)
    {
        var companiesLicense = command.Commands.Select(cmd => _mapper.Map<CompaniesLicense>(cmd)).ToList();
        var companyLicensesRes = await _companyLicenseService.BulkUpsertAsync(companiesLicense);
        return companyLicensesRes.Select(e => _mapper.Map<CompanyLicenseDto>(e)).ToList();

    }
}
