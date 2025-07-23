using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases.PersonAddressUseCases;
using Nexus.LAS.Domain.Entities.PersonEntities;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers
{
    public class PersonAddressController : GenericController<IPersonAddressService, PersonsAddress>
    {
        public PersonAddressController(IPersonAddressService service, IMediator mediator) : base(service, mediator)
        {
        }

        [NonAction]
        public override Task<IActionResult> BulkUpsertAsync(List<PersonsAddress> entities)
        {
            return base.BulkUpsertAsync(entities);
        }
        [HttpPost(nameof(BulkUpsertAsync))]
        public async Task<IActionResult> BulkUpsertAsync([FromBody] List<UpsertPersonAddressCommand> commands)
        {
            BulkUpsertPersonAddressCommand bulkUpsertPersonEmailCommand = new BulkUpsertPersonAddressCommand()
            {
                Commands = commands
            };
            return Ok(await _mediator.Send(bulkUpsertPersonEmailCommand));
        }
    }
}
