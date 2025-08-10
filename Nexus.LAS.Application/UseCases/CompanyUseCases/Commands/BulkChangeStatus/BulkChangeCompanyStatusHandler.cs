using MediatR;
using Nexus.LAS.Application.Contracts;

namespace Nexus.LAS.Application.UseCases.CompanyUseCases.Commands.BulkChangeStatus;

public class BulkChangeCompanyStatusHandler : IRequestHandler<BulkChangeCompanyStatusCommand , int>
{
    public readonly ICompanyService _companyService;
    public BulkChangeCompanyStatusHandler(ICompanyService companyService) 
    {
        _companyService = companyService;
    }
    public async Task<int> Handle(BulkChangeCompanyStatusCommand command , CancellationToken cancellationToken)
    {
        return await _companyService.BulkChangeStatus(command.Ids, command.Status);
    }
}
