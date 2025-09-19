using MediatR;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyUseCases.Commands.BulkChangeStatus
{
    public class BulkChangePropertyStatusCommand : IRequest<int>
    {
        public List<int> Ids { get; set; } = [];
        public int Status { get; set; }
    }
}