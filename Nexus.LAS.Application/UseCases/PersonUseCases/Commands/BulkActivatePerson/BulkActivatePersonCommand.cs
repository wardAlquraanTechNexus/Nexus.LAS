using MediatR;
using Nexus.LAS.Application.DTOs.PersonDTOs;
using System.Collections.Generic;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.Commands.BulkActivatePerson
{
    public class BulkActivatePersonCommand : IRequest<List<PersonDto>>
    {
        public List<int> PersonIds { get; set; } = new();
    }
}