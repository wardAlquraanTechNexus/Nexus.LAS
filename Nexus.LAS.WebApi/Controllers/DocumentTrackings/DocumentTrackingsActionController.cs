using MediatR;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentTrackingActionUseCases.Commands.CreateDocumentTrackingAction;
using Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentTrackingActionUseCases.Commands.UpdateDocumentTrackingAction;
using Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentTrackingActionUseCases.Queries.GetById;
using Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentTrackingActionUseCases.Queries.GetPaging;
using Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentTrackingUseCases.Commands.CreateDocumentTracking;
using Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentTrackingUseCases.Commands.UpdateDocumentTracking;
using Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentTrackingUseCases.Queries.GetById;
using Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentTrackingUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Domain.Entities.DocumentEntities;
using Nexus.LAS.WebApi.Attributes;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers.DocumentTrackings
{
    public class DocumentTrackingsActionController : GenericController<IDocumentTrackingsActionService, DocumentTrackingAction>
    {
        public DocumentTrackingsActionController(IDocumentTrackingsActionService service, IMediator mediator) : base(service, mediator)
        {
        }

        [NonAction]
        public override Task<IActionResult> GetByQuery()
        {
            return base.GetByQuery();
        }
        [HttpGet("{id}")]
        public override async Task<IActionResult> GetById(int id)
        {
            var query = new GetDocumentTrackingActionByIdQuery(id);
            return Ok(await _mediator.Send(query));

        }

        [HttpGet]
        [ApiMethodType(MethodType.Get)]
        public async Task<IActionResult> GetPaging([FromQuery] GetPagingDocumentTrackingActionQuery query)
        {
            return Ok(await _mediator.Send(query));
        }

        [NonAction]
        public override Task<IActionResult> CreateAsync(DocumentTrackingAction entity)
        {
            return base.CreateAsync(entity);
        }

        [NonAction]
        public override Task<IActionResult> UpdateAsync(DocumentTrackingAction entity)
        {
            return base.UpdateAsync(entity);
        }

        [HttpPost]
        [ApiMethodType(MethodType.Insert)]
        public async Task<IActionResult> Create(CreateDocumentTrackingActionCommand command)
        {
            return Ok(await _mediator.Send(command));
        }

        [HttpPut]
        [ApiMethodType(MethodType.Update)]
        public async Task<IActionResult> Update(UpdateDocumentTrackingActionCommand command)
        {
            return Ok(await _mediator.Send(command));
        }

    }
}
