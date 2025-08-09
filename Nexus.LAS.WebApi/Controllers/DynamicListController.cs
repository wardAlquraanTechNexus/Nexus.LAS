using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.DynamicListUseCases.Commands;
using Nexus.LAS.Domain.Entities.Lookup;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers;

public class DynamicListController : GenericController<IDynamicListService, DynamicList>
{
    public DynamicListController(IDynamicListService service, IMediator mediator) : base(service, mediator)
    {
    }

    [NonAction]
    public override Task<IActionResult> CreateAsync(DynamicList entity)
    {
        return base.CreateAsync(entity);
    }
    [HttpPost]
    public async Task<IActionResult> CreateUseCase(CreateDynamicListCommand command)
    {
        return Ok(await _mediator.Send(command));
    }

    [NonAction]
    public override Task<IActionResult> UpdateAsync(DynamicList entity)
    {
        return base.UpdateAsync(entity);
    }
    [HttpPut]
    public async Task<IActionResult> UpdateUseCase(UpdateDynamicListCommand command)
    {
        await _mediator.Send(command);
        return Ok();
    }
}
