using Microsoft.AspNetCore.Mvc;
using MediatR;
using Nexus.LAS.WebApi.Attributes;
using Nexus.LAS.WebApi.Controllers._GenericController;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Domain.Entities.PropertyEntities;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyLinkUseCases.Commands.CreatePropertyLink;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyLinkUseCases.Commands.UpdatePropertyLink;
using Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyLinkUseCases.Queries.GetPaging;

namespace Nexus.LAS.WebApi.Controllers.Properties
{
    public class PropertyLinkController : GenericController<IPropertyLinkService, PropertyLink>
    {
        public PropertyLinkController(IPropertyLinkService service, IMediator mediator) : base(service, mediator)
        {
        }

        [NonAction]
        public override Task<IActionResult> GetByQuery()
        {
            return base.GetByQuery();
        }

        [HttpGet]
        [ApiMethodType(MethodType.Get)]
        public async Task<IActionResult> GetPaging([FromQuery] GetPagingPropertyLinkQuery query)
        {
            return Ok(await _mediator.Send(query));
        }

        [NonAction]
        public override Task<IActionResult> CreateAsync(PropertyLink entity)
        {
            return base.CreateAsync(entity);
        }

        [NonAction]
        public override Task<IActionResult> UpdateAsync(PropertyLink entity)
        {
            return base.UpdateAsync(entity);
        }

        [HttpPost]
        [ApiMethodType(MethodType.Insert)]
        public async Task<IActionResult> CreatePropertyLink(CreatePropertyLinkCommand command)
        {
            return Ok(await _mediator.Send(command));
        }

        [HttpPut]
        [ApiMethodType(MethodType.Update)]
        public async Task<IActionResult> UpdatePropertyLink(UpdatePropertyLinkCommand command)
        {
            return Ok(await _mediator.Send(command));
        }
    }
}