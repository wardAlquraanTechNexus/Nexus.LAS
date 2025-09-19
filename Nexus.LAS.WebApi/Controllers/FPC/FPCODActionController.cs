using Microsoft.AspNetCore.Mvc;
using MediatR;
using Nexus.LAS.WebApi.Attributes;
using Nexus.LAS.WebApi.Controllers._GenericController;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Domain.Entities;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCsODsActionUseCases.Queries.GetPaging;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCsODsActionUseCases.Commands.CreateFPCsODsAction;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCsODsActionUseCases.Commands.UpdateFPCsODsAction;

namespace Nexus.LAS.WebApi.Controllers
{
    public class FPCODActionController : GenericController<IFPCODActionService, FPCODAction>
    {
        public FPCODActionController(IFPCODActionService service, IMediator mediator) : base(service, mediator)
        {
        }

        [NonAction]
        public override Task<IActionResult> GetByQuery()
        {
            return base.GetByQuery();
        }

        [HttpGet]
        [ApiMethodType(MethodType.Get)]
        public async Task<IActionResult> GetPaging([FromQuery] GetPagingFPCsODsActionQuery query)
        {
            return Ok(await _mediator.Send(query));
        }

        [NonAction]
        public override Task<IActionResult> CreateAsync(FPCODAction entity)
        {
            return base.CreateAsync(entity);
        }

        [NonAction]
        public override Task<IActionResult> UpdateAsync(FPCODAction entity)
        {
            return base.UpdateAsync(entity);
        }

        [HttpPost]
        [ApiMethodType(MethodType.Insert)]
        public async Task<IActionResult> CreateFPCODAction(CreateFPCsODsActionCommand command)
        {
            return Ok(await _mediator.Send(command));
        }

        [HttpPut]
        [ApiMethodType(MethodType.Update)]
        public async Task<IActionResult> UpdateFPCODAction(UpdateFPCODActionCommand command)
        {
            return Ok(await _mediator.Send(command));
        }
    }
}