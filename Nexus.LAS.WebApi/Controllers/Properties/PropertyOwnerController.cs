using Microsoft.AspNetCore.Mvc;
using MediatR;
using Nexus.LAS.WebApi.Attributes;
using Nexus.LAS.WebApi.Controllers._GenericController;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Domain.Entities.PropertyEntities;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyOwnerUseCases.Commands.CreatePropertyOwner;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyOwnerUseCases.Commands.UpdatePropertyOwner;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyOwnerUseCases.Queries.GetPaging;

namespace Nexus.LAS.WebApi.Controllers.Properties
{
    public class PropertyOwnerController : GenericController<IPropertyOwnerService, PropertyOwner>
    {
        public PropertyOwnerController(IPropertyOwnerService service, IMediator mediator) : base(service, mediator)
        {
        }

        [NonAction]
        public override Task<IActionResult> GetByQuery()
        {
            return base.GetByQuery();
        }

        [HttpGet]
        [ApiMethodType(MethodType.Get)]
        public async Task<IActionResult> GetPaging([FromQuery] GetPagingPropertyOwnerQuery query)
        {
            return Ok(await _mediator.Send(query));
        }

        [NonAction]
        public override Task<IActionResult> CreateAsync(PropertyOwner entity)
        {
            return base.CreateAsync(entity);
        }

        [NonAction]
        public override Task<IActionResult> UpdateAsync(PropertyOwner entity)
        {
            return base.UpdateAsync(entity);
        }

        [HttpPost]
        [ApiMethodType(MethodType.Insert)]
        public async Task<IActionResult> CreatePropertyOwner(CreatePropertyOwnerCommand command)
        {
            return Ok(await _mediator.Send(command));
        }

        [HttpPut]
        [ApiMethodType(MethodType.Update)]
        public async Task<IActionResult> UpdatePropertyOwner(UpdatePropertyOwnerCommand command)
        {
            return Ok(await _mediator.Send(command));
        }
    }
}