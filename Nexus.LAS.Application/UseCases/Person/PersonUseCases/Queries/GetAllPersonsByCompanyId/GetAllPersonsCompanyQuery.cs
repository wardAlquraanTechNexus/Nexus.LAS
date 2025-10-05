using MediatR;
using Nexus.LAS.Application.DTOs.PersonDTOs;
using System.Collections.Generic;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.Queries.GetAllPersonsByCompanyId
{
    public class GetAllPersonsCompanyQuery : IRequest<List<PersonDto>>
    {
        public int CompanyId { get; set; }
        public int? PersonId { get; set; }
        public string? PersonName { get; set; }
    }
}