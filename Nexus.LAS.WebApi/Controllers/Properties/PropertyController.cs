using Microsoft.AspNetCore.Mvc;
using MediatR;
using Nexus.LAS.WebApi.Attributes;
using Nexus.LAS.WebApi.Controllers._GenericController;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Domain.Entities.PropertyEntities;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyUseCases.Commands.UpdateProperty;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyUseCases.Commands.CreateProperty;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyUseCases.Queries.GetPaging;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyUseCases.Commands.BulkChangeStatus;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyUseCases.Commands.BulkChangePrivate;

namespace Nexus.LAS.WebApi.Controllers.Properties
{
    public class PropertyController : GenericController<IPropertyService, Property>
    {
        public PropertyController(IPropertyService service, IMediator mediator) : base(service, mediator)
        {
        }

        [NonAction]
        public override Task<IActionResult> GetByQuery()
        {
            return base.GetByQuery();
        }

        [HttpGet]
        [ApiMethodType(MethodType.Get)]
        public async Task<IActionResult> GetPaging([FromQuery] GetPagingPropertyQuery query)
        {
            return Ok(await _mediator.Send(query));
        }

        [NonAction]
        public override Task<IActionResult> CreateAsync(Property entity)
        {
            return base.CreateAsync(entity);
        }

        [NonAction]
        public override Task<IActionResult> UpdateAsync(Property entity)
        {
            return base.UpdateAsync(entity);
        }

        [HttpPost]
        [ApiMethodType(MethodType.Insert)]
        public async Task<IActionResult> CreateProperty(CreatePropertyCommand command)
        {
            return Ok(await _mediator.Send(command));
        }

        [HttpPut]
        [ApiMethodType(MethodType.Update)]
        public async Task<IActionResult> UpdateProperty(UpdatePropertyCommand command)
        {
            return Ok(await _mediator.Send(command));
        }

        [HttpPut(nameof(BulkChangeStatus))]
        [ApiMethodType(MethodType.Admin)]
        public async Task<IActionResult> BulkChangeStatus([FromBody] BulkChangePropertyStatusCommand command)
        {
            var result = await _mediator.Send(command);
            return Ok(result);
        }

        [HttpPut(nameof(BulkChangePrivate))]
        [ApiMethodType(MethodType.Admin)]
        public async Task<IActionResult> BulkChangePrivate([FromBody] BulkChangePropertyPrivateCommand command)
        {
            var result = await _mediator.Send(command);
            return Ok(result);
        }
    }
}