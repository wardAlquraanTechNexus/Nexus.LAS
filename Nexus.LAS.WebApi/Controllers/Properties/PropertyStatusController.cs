using Microsoft.AspNetCore.Mvc;
using MediatR;
using Nexus.LAS.WebApi.Attributes;
using Nexus.LAS.WebApi.Controllers._GenericController;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Domain.Entities.PropertyEntities;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertiesStatusUseCases.Commands.CreatePropertiesStatus;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertiesStatusUseCases.Commands.UpdatePropertiesStatus;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertiesStatusUseCases.Queries.GetPaging;

namespace Nexus.LAS.WebApi.Controllers.Properties
{
    public class PropertyStatusController : GenericController<IPropertyStatusService, PropertyStatus>
    {
        public PropertyStatusController(IPropertyStatusService service, IMediator mediator) : base(service, mediator)
        {
        }

        [NonAction]
        public override Task<IActionResult> GetByQuery()
        {
            return base.GetByQuery();
        }

        [HttpGet]
        [ApiMethodType(MethodType.Get)]
        public async Task<IActionResult> GetPaging([FromQuery] GetPagingPropertyStatusQuery query)
        {
            return Ok(await _mediator.Send(query));
        }

        [NonAction]
        public override Task<IActionResult> CreateAsync(PropertyStatus entity)
        {
            return base.CreateAsync(entity);
        }

        [NonAction]
        public override Task<IActionResult> UpdateAsync(PropertyStatus entity)
        {
            return base.UpdateAsync(entity);
        }

        [HttpPost]
        [ApiMethodType(MethodType.Insert)]
        public async Task<IActionResult> CreatePropertyStatus(CreatePropertyStatusCommand command)
        {
            return Ok(await _mediator.Send(command));
        }

        [HttpPut]
        [ApiMethodType(MethodType.Update)]
        public async Task<IActionResult> UpdatePropertyStatus(UpdatePropertyStatusCommand command)
        {
            return Ok(await _mediator.Send(command));
        }
    }
}