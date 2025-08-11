using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases.PersonEmailUseCases;
using Nexus.LAS.Application.UseCases.PersonEmailUseCases.Commands.CreatePersonEmail;
using Nexus.LAS.Application.UseCases.PersonEmailUseCases.Commands.UpdatePersonEmail;
using Nexus.LAS.Domain.Entities.PersonEntities;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers
{
    public class PersonEmailController : GenericController<IPersonEmailService, PersonsEmail>
    {
        public PersonEmailController(IPersonEmailService service, IMediator mediator) : base(service, mediator)
        {
        }

        [NonAction]
        public override Task<IActionResult> BulkUpsertAsync(List<PersonsEmail> entities)
        {
            return base.BulkUpsertAsync(entities);
        }
        [HttpPost(nameof(BulkUpsertAsync))]
        public async Task<IActionResult> BulkUpsertAsync([FromBody] List<UpsertPersonEmailCommand> commands)
        {
            BulkUpsertPersonEmailCommand bulkUpsertPersonEmailCommand = new BulkUpsertPersonEmailCommand()
            {
                Commands = commands
            };
            return Ok(await _mediator.Send(bulkUpsertPersonEmailCommand));
        }

        [NonAction]
        public override Task<IActionResult> CreateAsync(PersonsEmail entity)
        {
            return base.CreateAsync(entity);
        }
        [HttpPost]
        public async Task<IActionResult> CreateUseCase(CreatePersonEmailCommand command)
        {
            return Ok(await _mediator.Send(command));
        }

        [NonAction]
        public override Task<IActionResult> UpdateAsync(PersonsEmail entity)
        {
            return base.UpdateAsync(entity);
        }
        [HttpPut]
        public async Task<IActionResult> UpdateUseCase(UpdatePersonEmailCommand command)
        {
            await _mediator.Send(command);
            return Ok();
        }

    }
}
