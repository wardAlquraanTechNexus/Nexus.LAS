using Microsoft.AspNetCore.Mvc;
using MediatR;
using Nexus.LAS.WebApi.Attributes;
using Nexus.LAS.WebApi.Controllers._GenericController;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Domain.Entities.PropertyEntities;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyDocumentUseCases.Commands.CreatePropertyDocument;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyDocumentUseCases.Commands.UpdatePropertyDocument;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyDocumentUseCases.Queries.GetPaging;

namespace Nexus.LAS.WebApi.Controllers.Properties
{
    public class PropertyDocumentController : GenericController<IPropertyDocumentService, PropertyDocument>
    {
        public PropertyDocumentController(IPropertyDocumentService service, IMediator mediator) : base(service, mediator)
        {
        }

        [NonAction]
        public override Task<IActionResult> GetByQuery()
        {
            return base.GetByQuery();
        }

        [HttpGet]
        [ApiMethodType(MethodType.Get)]
        public async Task<IActionResult> GetPaging([FromQuery] GetPagingPropertyDocumentQuery query)
        {
            return Ok(await _mediator.Send(query));
        }

        [NonAction]
        public override Task<IActionResult> CreateAsync(PropertyDocument entity)
        {
            return base.CreateAsync(entity);
        }

        [NonAction]
        public override Task<IActionResult> UpdateAsync(PropertyDocument entity)
        {
            return base.UpdateAsync(entity);
        }

        [HttpPost("CreateByForm")]
        [ApiMethodType(MethodType.Insert)]
        public async Task<IActionResult> CreateByForm([FromForm]CreatePropertyDocumentCommand command)
        {
            return Ok(await _mediator.Send(command));
        }
        [HttpPost]
        [ApiMethodType(MethodType.Insert)]
        public async Task<IActionResult> CreatePropertyDocument([FromBody] CreatePropertyDocumentCommand command)
        {
            return Ok(await _mediator.Send(command));
        }

        [HttpPut]
        [ApiMethodType(MethodType.Update)]
        public async Task<IActionResult> UpdatePropertyDocument([FromBody]UpdatePropertyDocumentCommand command)
        {
            return Ok(await _mediator.Send(command));
        }
        [HttpPut("UpdateByForm")]
        [ApiMethodType(MethodType.Update)]
        public async Task<IActionResult> UpdateByForm([FromForm]UpdatePropertyDocumentCommand command)
        {
            return Ok(await _mediator.Send(command));
        }
    }
}