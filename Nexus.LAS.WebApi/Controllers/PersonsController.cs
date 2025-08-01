using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases.PersonUseCases.Commands.BulkChangePrivate;
using Nexus.LAS.Application.UseCases.PersonUseCases.Commands.BulkChangeStatus;
using Nexus.LAS.Application.UseCases.PersonUseCases.Commands.CreatePerson;
using Nexus.LAS.Application.UseCases.PersonUseCases.Commands.UpdatePerson;
using Nexus.LAS.Application.UseCases.PersonUseCases.Queries.GetAllActivePerson;
using Nexus.LAS.Application.UseCases.PersonUseCases.Queries.GetAllPerson;
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
        [HttpGet(nameof(GetAllActivePerson))]
        public async Task<IActionResult> GetAllActivePerson([FromQuery]GetAllActivePersonQuery personQuery)
        {
            return Ok(await _mediator.Send(personQuery));
        }
        [HttpPost(nameof(CreatePerson))]
        public async Task<IActionResult> CreatePerson([FromBody]CreatePersonCommand command)
        {
            return Ok(await _mediator.Send(command));
        }
        [HttpPut(nameof(UpdatePerson))]
        public async Task<IActionResult> UpdatePerson([FromBody]UpdatePersonCommand command)
        {
            return Ok(await _mediator.Send(command));
        }
        [HttpPut(nameof(BulkChangeStatus))]
        public async Task<IActionResult> BulkChangeStatus([FromBody]BulkChangeStatusCommand command)
        {
            return Ok(await _mediator.Send(command));
        }
        [HttpPut(nameof(BulkChangePrivate))]
        public async Task<IActionResult> BulkChangePrivate([FromBody]BulkChangePrivateCommand command)
        {
            return Ok(await _mediator.Send(command));
        }
    }
}
