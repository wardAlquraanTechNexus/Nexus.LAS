using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyUseCases.Commands.BulkChangePrivate
{
    public class BulkChangePropertyPrivateHandler : IRequestHandler<BulkChangePropertyPrivateCommand, int>
    {
        private readonly IPropertyService _propertyService;

        public BulkChangePropertyPrivateHandler(IPropertyService propertyService)
        {
            _propertyService = propertyService;
        }

        public async Task<int> Handle(BulkChangePropertyPrivateCommand request, CancellationToken cancellationToken)
        {
            return await _propertyService.BulkChangePrivate(request.Ids, request.IsPrivate);
        }
    }
}