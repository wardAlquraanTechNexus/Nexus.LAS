using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.PersonAddressUseCases;
using Nexus.LAS.Application.UseCases.PersonAddressUseCases.Commands.CreatePersonAddress;
using Nexus.LAS.Application.UseCases.PersonAddressUseCases.Commands.UpdatePersonAddress;
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

        [NonAction]
        public override Task<IActionResult> CreateAsync([FromBody] PersonsAddress entity)
        {
            return base.CreateAsync(entity);
        }

        [HttpPost]
        public async Task<IActionResult> CreateAddressAsync([FromBody] CreatePersonAddressCommand command)
        {
            return Ok(await _mediator.Send(command));
        }

        [NonAction]
        public override Task<IActionResult> UpdateAsync([FromBody] PersonsAddress entity)
        {
            return base.UpdateAsync(entity);
        }

        [HttpPut]
        public async Task<IActionResult> UpdateAddressAsync([FromBody] UpdatePersonAddressCommand command)
        {
            return Ok(await _mediator.Send(command));
        }
    }

}
