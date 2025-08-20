using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.GetGroupDTO;
using Nexus.LAS.Application.UseCases.GroupUseCases.Commands;
using Nexus.LAS.Application.UseCases.Queries;
using Nexus.LAS.Domain.Entities.Lookup;
using Nexus.LAS.WebApi.Attributes;
using Nexus.LAS.WebApi.Controllers._GenericController;


namespace Nexus.LAS.WebApi.Controllers;

public class GroupController : GenericController<IGroupService, Group>
{
    public GroupController(IGroupService service, IMediator mediator) : base(service, mediator)
    {
    }

    [NonAction]
    public override Task<IActionResult> CreateAsync(Group entity)
    {
        return base.CreateAsync(entity);
    }
    [HttpPost]
    [ApiMethodType(Domain.Constants.Enums.MethodType.Insert)]
    public async Task<IActionResult> CreateUseCase(CreateGroupCommand command)
    {
        return Ok(await _mediator.Send(command));
    }

    [NonAction]
    public override Task<IActionResult> UpdateAsync(Group entity)
    {
        return base.UpdateAsync(entity);
    }
    [HttpPut]
    [ApiMethodType(Domain.Constants.Enums.MethodType.Update)]
    public async Task<IActionResult> UpdateUseCase(UpdateGroupCommand command)
    {
        await _mediator.Send(command);
        return Ok();
    }

    [HttpGet(nameof(SearchGroup))]
    [ApiMethodType(Domain.Constants.Enums.MethodType.Get)]
    public async Task<IActionResult> SearchGroup([FromQuery]SearchGroupQuery query)
    {
        return Ok(await _mediator.Send(query));
    }
    [NonAction]
    public override Task<IActionResult> GetByQuery()
    {
        return base.GetByQuery();
    }
    [HttpGet]
    [ApiMethodType(Domain.Constants.Enums.MethodType.Get)]
    public async Task<IActionResult> GetGroups([FromQuery]GetGroupDtoQuery query)
    {
        return Ok(await _mediator.Send(query));
    }
}
