using MediatR;
using Nexus.LAS.Application.DTOs.DocumentDTOs;

namespace Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentTrackingActionUseCases.Queries.GetById
{
    public class GetDocumentTrackingActionByIdQuery : IRequest<DocumentTrackingActionDto>
    {
        public int Id { get; set; }
        public GetDocumentTrackingActionByIdQuery(int id) => Id = id;
    }
}