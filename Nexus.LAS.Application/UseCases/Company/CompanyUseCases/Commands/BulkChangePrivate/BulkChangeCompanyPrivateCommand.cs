using MediatR;

namespace Nexus.LAS.Application.UseCases.CompanyUseCases.Commands.BulkChangePrivate;

public class BulkChangeCompanyPrivateCommand: IRequest<int>
{
    public List<int> Ids { get; set; }
    public bool IsPrivate { get; set; }
}
