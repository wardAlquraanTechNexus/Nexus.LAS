using MediatR;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases.PersonUseCases.CreatePerson.Commands;
using Nexus.LAS.Application.UseCases.PersonUseCases.Queries;
using Nexus.LAS.Domain.Entities.PersonEntities;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers
{
    public class PersonsController : GenericController<IPersonService, Person>
    {
        public PersonsController(IPersonService service, IMediator mediator) : base(service, mediator)
        {
        }

        [HttpGet(nameof(GetAllPerson))]
        public async Task<IActionResult> GetAllPerson([FromQuery]GetAllPersonQuery personQuery)
        {
            return Ok(await _mediator.Send(personQuery));
        }
        [HttpPost(nameof(CreatePerson))]
        public async Task<IActionResult> CreatePerson([FromBody]CreatePersonCommand command)
        {
            return Ok(await _mediator.Send(command));
        }
    }
}
