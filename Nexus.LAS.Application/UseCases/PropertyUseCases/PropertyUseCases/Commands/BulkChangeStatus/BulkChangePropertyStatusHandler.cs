using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyUseCases.Commands.BulkChangeStatus
{
    public class BulkChangePropertyStatusHandler : IRequestHandler<BulkChangePropertyStatusCommand, int>
    {
        private readonly IPropertyService _propertyService;

        public BulkChangePropertyStatusHandler(IPropertyService propertyService)
        {
            _propertyService = propertyService;
        }

        public async Task<int> Handle(BulkChangePropertyStatusCommand request, CancellationToken cancellationToken)
        {
            return await _propertyService.BulkChangeStatus(request.Ids, request.Status);
        }
    }
}