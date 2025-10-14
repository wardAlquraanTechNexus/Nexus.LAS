using MediatR;
using Nexus.LAS.Application.DTOs.DocumentDTOs;

namespace Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentTrackingUseCases.Queries.GetById
{
    public class GetDocumentTrackingByIdQuery : IRequest<DocumentTrackingDto>
    {
        public int Id { get; set; }
        public GetDocumentTrackingByIdQuery(int id) => Id = id;
    }
}