using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.DTOs.CompanyBankAccountDTOs;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyBankAccountUseCases;

public class UpsertCompanyBankAccountHandler: IRequestHandler<BulkUpsertCompanyBankAccountCommand, List<CompanyBankAccountDto>>
{
    private readonly ICompanyBankAccountService _companyBankAccountService;
    private readonly IMapper _mapper;
    public UpsertCompanyBankAccountHandler(ICompanyBankAccountService companyBankAccountService, IMapper mapper) 
    {
        _companyBankAccountService = companyBankAccountService;
        _mapper = mapper;   
    }
    public async Task<List<CompanyBankAccountDto>> Handle(BulkUpsertCompanyBankAccountCommand command , CancellationToken cancellationToken)
    {
        var companiesBankAccount = command.Commands.Select(cmd => _mapper.Map<CompaniesBankAccount>(cmd)).ToList();
        var companyBankAccountsRes = await _companyBankAccountService.BulkUpsertAsync(companiesBankAccount);
        return companyBankAccountsRes.Select(e => _mapper.Map<CompanyBankAccountDto>(e)).ToList();

    }
}
