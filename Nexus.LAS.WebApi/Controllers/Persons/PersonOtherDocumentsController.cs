using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases.PersonIdDetail.Commands.EditPersonIdDetail;
using Nexus.LAS.Application.UseCases.PersonOtherDocumentUseCases.Commands.CreatePersonOtherDocument;
using Nexus.LAS.Application.UseCases.PersonOtherDocumentUseCases.Commands.EditPersonOtherDocument;
using Nexus.LAS.Domain.Entities.PersonEntities;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers
{
    public class PersonOtherDocumentsController : GenericController<IPersonOtherDocumentService, PersonsOtherDocument>
    {
        public PersonOtherDocumentsController(IPersonOtherDocumentService service, IMediator mediator) : base(service, mediator)
        {
        }

        [NonAction]
        public override Task<IActionResult> CreateAsync(PersonsOtherDocument entity)
        {
            return base.CreateAsync(entity);
        }

        [HttpPost]
        public async Task<IActionResult> CreateAsync([FromForm] CreatePersonOtherDocumentCommand command)
        {
            return StatusCode(201, await _mediator.Send(command));
        }

        [HttpGet("GetDTOById/{id}")]
        public async Task<IActionResult> GetDTOById(int id)
        {
            var res = await _service.GetDTOAsync(id);
            return Ok(res);

        }

        [NonAction]
        public override Task<IActionResult> UpdateAsync(PersonsOtherDocument entity)
        {
            return base.UpdateAsync(entity);
        }

        [HttpPut]
        public async Task<IActionResult> UpdatePersonDetail([FromForm]EditPersonOtherDocumentCommand command)
        {
            return StatusCode(201, await _mediator.Send(command));
        }
    }
}
