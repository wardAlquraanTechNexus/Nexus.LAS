using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.DocumentDTOs;
using System.Threading;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentTrackingUseCases.Queries.GetById
{
    public class GetDocumentTrackingByIdHandler : IRequestHandler<GetDocumentTrackingByIdQuery, DocumentTrackingDto>
    {
        private readonly IDocumentTrackingService _service;

        public GetDocumentTrackingByIdHandler(IDocumentTrackingService service)
        {
            _service = service;
        }

        public async Task<DocumentTrackingDto> Handle(GetDocumentTrackingByIdQuery request, CancellationToken cancellationToken)
        {
            return await _service.GetDtoById(request.Id);
        }
    }
}