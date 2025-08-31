using MediatR;
using Nexus.LAS.Application.DTOs.PersonDTOs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.Queries
{
    public class GetAllPersonsQuery:IRequest<List<GetPersonsDto>>
    {
        public int? Id { get; set; }
        public string? SearchBy { get; set; }
    }
}
