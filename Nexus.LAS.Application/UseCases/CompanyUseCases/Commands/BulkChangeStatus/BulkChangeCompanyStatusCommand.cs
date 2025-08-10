using MediatR;

namespace Nexus.LAS.Application.UseCases.CompanyUseCases.Commands.BulkChangeStatus;

public class BulkChangeCompanyStatusCommand: IRequest<int>
{
    public List<int> Ids { get; set; }
    public int Status { get; set; }
}
