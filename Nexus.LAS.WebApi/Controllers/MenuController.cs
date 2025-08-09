using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.MenuUseCases.Commands;
using Nexus.LAS.Domain.Entities.Lookup;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers;

public class MenuController : GenericController<IMenuService, Menu>
{
    public MenuController(IMenuService service, IMediator mediator) : base(service, mediator)
    {
    }

    [NonAction]
    public override Task<IActionResult> CreateAsync(Menu entity)
    {
        return base.CreateAsync(entity);
    }
    [HttpPost]
    public async Task<IActionResult> CreateUseCase(CreateMenuCommand command)
    {
        return Ok(await _mediator.Send(command));
    }

    [NonAction]
    public override Task<IActionResult> UpdateAsync(Menu entity)
    {
        return base.UpdateAsync(entity);
    }
    [HttpPut]
    public async Task<IActionResult> UpdateUseCase(UpdateMenuCommand command)
    {
        await _mediator.Send(command);
        return Ok();
    }
}
