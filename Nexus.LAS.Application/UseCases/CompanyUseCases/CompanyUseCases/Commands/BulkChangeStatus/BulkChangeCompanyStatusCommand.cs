using MediatR;
using Nexus.LAS.Domain.Constants.Enums;

namespace Nexus.LAS.Application.UseCases.CompanyUseCases.Commands.BulkChangeStatus;

public class BulkChangeCompanyStatusCommand: IRequest<int>
{
    public List<int> Ids { get; set; }
    public CommonStatus Status { get; set; }
}
