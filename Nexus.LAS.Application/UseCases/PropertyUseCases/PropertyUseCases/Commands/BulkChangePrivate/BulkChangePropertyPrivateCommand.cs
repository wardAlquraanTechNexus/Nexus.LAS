using MediatR;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyUseCases.Commands.BulkChangePrivate
{
    public class BulkChangePropertyPrivateCommand : IRequest<int>
    {
        public List<int> Ids { get; set; } = [];
        public bool IsPrivate { get; set; }
    }
}