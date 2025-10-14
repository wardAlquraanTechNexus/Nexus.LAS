using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.DocumentDTOs;

namespace Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentTrackingActionUseCases.Queries.GetById
{
    public class GetDocumentTrackingActionByIdHandler : IRequestHandler<GetDocumentTrackingActionByIdQuery, DocumentTrackingActionDto>
    {
        private readonly IDocumentTrackingsActionService _service;
        private readonly IMapper _mapper;

        public GetDocumentTrackingActionByIdHandler(IDocumentTrackingsActionService service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;
        }

        public async Task<DocumentTrackingActionDto> Handle(GetDocumentTrackingActionByIdQuery request, CancellationToken cancellationToken)
        {
            var entity = await _service.GetAsync(request.Id);
            return _mapper.Map<DocumentTrackingActionDto>(entity);
        }
    }
}