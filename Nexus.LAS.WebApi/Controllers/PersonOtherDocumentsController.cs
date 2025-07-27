using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases.PersonOtherDocumentUseCases.Commands.CreatePersonOtherDocument;
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
    }
}
