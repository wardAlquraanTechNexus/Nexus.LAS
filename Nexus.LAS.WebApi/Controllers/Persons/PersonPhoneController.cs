using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases.PersonPhoneUseCases;
using Nexus.LAS.Application.UseCases.PersonPhoneUseCases.Commands.CreatePersonPhone;
using Nexus.LAS.Domain.Entities.PersonEntities;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers;
public class PersonPhoneController : GenericController<IPersonPhoneService, PersonsPhone>
{
    public PersonPhoneController(IPersonPhoneService service, IMediator mediator) : base(service, mediator)
    {
    }

    [NonAction]
    public override Task<IActionResult> BulkUpsertAsync(List<PersonsPhone> entities)
    {
        return base.BulkUpsertAsync(entities);
    }
    [HttpPost(nameof(BulkUpsertAsync))]
    public async Task<IActionResult> BulkUpsertAsync([FromBody] List<UpsertPersonPhoneCommand> commands)
    {
        BulkUpsertPersonPhoneCommand bulkUpsertPersonEmailCommand = new BulkUpsertPersonPhoneCommand()
        {
            Commands = commands
        };
        return Ok(await _mediator.Send(bulkUpsertPersonEmailCommand));
    }
    [NonAction]
    public override Task<IActionResult> CreateAsync(PersonsPhone entity)
    {
        return base.CreateAsync(entity);
    }
    [HttpPost]
    public async Task<IActionResult> CreatePhone(CreatePersonPhoneCommand command)
    {
        return Ok(await _mediator.Send(command));
    }
}
