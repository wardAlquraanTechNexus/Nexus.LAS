using MediatR;
using Nexus.LAS.Application.DTOs.PropertyDTOs;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyUseCases.Queries.GetPropertyDto
{
    public class GetPropertyDtoQuery : IRequest<PropertyDto>
    {
        public int Id { get; set; }
        public GetPropertyDtoQuery(int id) => Id = id;
    }
}