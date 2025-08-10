using MediatR;
using Nexus.LAS.Application.Contracts;

namespace Nexus.LAS.Application.UseCases.CompanyUseCases.Commands.BulkChangePrivate;

public class BulkChangeCompanyPrivateHandler: IRequestHandler<BulkChangeCompanyPrivateCommand , int>
{
    private readonly ICompanyService _companyService;
    public BulkChangeCompanyPrivateHandler(ICompanyService companyService)
    {
        _companyService = companyService;
    }
    public async Task<int> Handle(BulkChangeCompanyPrivateCommand command , CancellationToken cancellationToken)
    {
        return await _companyService.BulkChangePrivate(command.Ids, command.IsPrivate);
    }
}
