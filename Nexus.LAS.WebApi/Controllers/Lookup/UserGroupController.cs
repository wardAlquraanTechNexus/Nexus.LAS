using DocumentFormat.OpenXml.Vml.Office;
using MediatR;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases.UserGroupUseCases.Commands;
using Nexus.LAS.Application.UseCases.UserGroupUseCases.Queries;
using Nexus.LAS.Domain.Entities.UserGroupEntities;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers.Lookup
{

    public class UserGroupController : GenericController<IUserGroupService, UserGroup>
    {
        public UserGroupController(IUserGroupService service, IMediator mediator) : base(service, mediator)
        {
        }

        [HttpGet(nameof(GetUserGroups))]
        public async Task<IActionResult> GetUserGroups([FromQuery]GetUsetGroupDTOQuery query)
        {
            return Ok(await _mediator.Send(query));
        }
        [NonAction]
        public override async Task<IActionResult> CreateAsync(UserGroup entity)
        {
            var res = await _service.CreateAsync(entity);
            return StatusCode(201, res);

        }
        [HttpPost]
        public async Task<IActionResult> CreateUserGroup(CreateUserGroupCommand command)
        {
            return StatusCode(201, await _mediator.Send(command));

        }
    }
}
