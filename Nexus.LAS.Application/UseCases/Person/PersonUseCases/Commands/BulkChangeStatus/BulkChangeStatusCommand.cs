using MediatR;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.Commands.BulkChangeStatus;

public class BulkChangeStatusCommand: IRequest<int>
{
    public List<int> Ids { get; set; }
    public int Status { get; set; }
}
