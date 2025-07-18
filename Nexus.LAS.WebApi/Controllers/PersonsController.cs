using MediatR;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.UseCases.PersonUseCases.CreatePerson.Commands;
using Nexus.LAS.Application.UseCases.PersonUseCases.Queries;

namespace Nexus.LAS.WebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [Authorize(Policy = "PermissionPolicy")]

    public class PersonsController : ControllerBase
    {
        private readonly IMediator _mediator;

        public PersonsController(IMediator mediator)
        {
            _mediator = mediator;
        }

        [HttpGet(nameof(GetAllPerson))]
        public async Task<IActionResult> GetAllPerson(GetAllPersonQuery personQuery)
        {
            return Ok(await _mediator.Send(personQuery));
        }
        [HttpPost]
        public async Task<IActionResult> CreatePerson([FromBody]CreatePersonCommand command)
        {
            return Ok(await _mediator.Send(command));
        }
    }
}
