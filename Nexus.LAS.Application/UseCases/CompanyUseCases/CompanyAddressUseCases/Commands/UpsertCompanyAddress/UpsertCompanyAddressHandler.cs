using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.CompanyAddressDTOs;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyAddressUseCases;

public class UpsertCompanyAddressHandler: IRequestHandler<BulkUpsertCompanyAddressCommand , List<CompanyAddressDto>>
{
    private readonly ICompanyAddressService _companyAddressService;
    private readonly IMapper _mapper;

    public UpsertCompanyAddressHandler(ICompanyAddressService companyAddressService, IMapper mapper)
    {
        _companyAddressService = companyAddressService;
        _mapper = mapper;
    }

    public async Task<List<CompanyAddressDto>> Handle(BulkUpsertCompanyAddressCommand command, CancellationToken cancellationToken)
    {
        var companiesEmail = command.Commands.Select(cmd => _mapper.Map<CompanyAddress>(cmd)).ToList();
        var companyEmailsRes = await _companyAddressService.BulkUpsertAsync(companiesEmail);
        return companyEmailsRes.Select(e => _mapper.Map<CompanyAddressDto>(e)).ToList();
    }
}
