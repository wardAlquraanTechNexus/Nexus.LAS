using MediatR;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases.PersonIdDetail;
using Nexus.LAS.Domain.Entities.PersonEntities;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers
{
    public class PersonIdDetailsController : GenericController<IPersonIdDetailService, PersonsIDDetail>
    {
        public PersonIdDetailsController(IPersonIdDetailService service, IMediator mediator) : base(service, mediator)
        {
        }

        [NonAction]
        public override Task<IActionResult> CreateAsync(PersonsIDDetail entity)
        {
            return base.CreateAsync(entity);
        }

        [HttpPost]
        public async Task<IActionResult> CreateAsync(CreatePersonIdDetailCommand command)
        {
            return StatusCode(201, await _mediator.Send(command));
        }
    }
}
