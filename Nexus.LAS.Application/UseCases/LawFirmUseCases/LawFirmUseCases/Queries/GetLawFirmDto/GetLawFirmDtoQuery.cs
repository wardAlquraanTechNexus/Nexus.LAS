using MediatR;
using Nexus.LAS.Application.DTOs.LawFirmDTOs;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmUseCases.Queries.GetLawFirmDto
{
    public class GetLawFirmDtoQuery : IRequest<LawFirmDto?>
    {
        public int Id { get; set; }
        public GetLawFirmDtoQuery(int id) => Id = id;
    }
}