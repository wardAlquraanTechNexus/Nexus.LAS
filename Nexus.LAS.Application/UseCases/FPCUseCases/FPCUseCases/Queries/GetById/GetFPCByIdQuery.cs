using MediatR;
using Nexus.LAS.Application.DTOs.FPCDTOs;

namespace Nexus.LAS.Application.UseCases.FPCUseCases.FPCUseCases.Queries.GetById
{
    public class GetFPCByIdQuery : IRequest<FPCDto?>
    {
        public int Id { get; set; }
        public GetFPCByIdQuery(int id)
        {
            Id = id;
        }
    }
}