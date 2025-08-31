using MediatR;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.PersonEmailUseCases;
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

    }
}
