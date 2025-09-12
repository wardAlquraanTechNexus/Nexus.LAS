using MediatR;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;

namespace Nexus.LAS.Application.UseCases.PersonIdDetailUseCases.Queries
{
    public class GetPagingPersonIdDetailQuery : GetPagingQuery, IRequest<PagingResult<PersonIdDetailDto>>
    {
        // Add filter properties as needed, e.g.:
        public int? PersonsIdn { get; set; }
        public bool? IsPrimary { get; set; }
    }
}