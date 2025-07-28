using MediatR;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases.PersonIdDetail.Commands.CreatePersonIdDetail;
using Nexus.LAS.Application.UseCases.PersonIdDetail.Commands.EditPersonIdDetail;
using Nexus.LAS.Application.UseCases.PersonUseCases.UpdatePerson.Commands;
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
        public async Task<IActionResult> CreateAsync([FromForm]CreatePersonIdDetailCommand command)
        {
            return StatusCode(201, await _mediator.Send(command));
        }
        [NonAction]
        public override Task<IActionResult> UpdateAsync(PersonsIDDetail entity)
        {
            return base.UpdateAsync(entity);
        }

        [HttpPut]
        public async Task<IActionResult> UpdatePersonDetail(EditPersonIdDetailCommand command)
        {
            return StatusCode(201, await _mediator.Send(command));
        }

        [HttpGet("GetDTOById/{id}")]
        public async Task<IActionResult> GetDTOById(int id)
        {
            var res = await _service.GetDTOAsync(id);
            return Ok(res);

        }
    }
}
