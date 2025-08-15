using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.GroupMenuUseCases.Commands;
using Nexus.LAS.Application.UseCases.Queries.SearchMenu;
using Nexus.LAS.Domain.Entities.Lookup;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers;

public class GroupMenuController : GenericController<IGroupMenuService, GroupMenu>
{
    public GroupMenuController(IGroupMenuService service, IMediator mediator) : base(service, mediator)
    {
    }

    [NonAction]
    public override Task<IActionResult> CreateAsync(GroupMenu entity)
    {
        return base.CreateAsync(entity);
    }
    [HttpPost]
    public async Task<IActionResult> CreateUseCase(CreateGroupMenuCommand command)
    {
        return Ok(await _mediator.Send(command));
    }

    [NonAction]
    public override Task<IActionResult> UpdateAsync(GroupMenu entity)
    {
        return base.UpdateAsync(entity);
    }
    [HttpPut]
    public async Task<IActionResult> UpdateUseCase(UpdateGroupMenuCommand command)
    {
        await _mediator.Send(command);
        return Ok();
    }

    [NonAction]
    public override Task<IActionResult> GetByQuery()
    {
        return base.GetByQuery();
    }
    [HttpGet]
    public async Task<IActionResult> SearchGroupMenu([FromQuery]SearchGroupMenuQuery query)
    {
        return Ok(await _mediator.Send(query));
    }
}
