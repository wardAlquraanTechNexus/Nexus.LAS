using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.UserUseCases.Queries;
using Nexus.LAS.Domain.Entities.UserGroupEntities;
using Nexus.LAS.WebApi.Attributes;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers
{
    public class UserController : GenericController<IUserService, User>
    {
        public UserController(IUserService service, IMediator mediator) : base(service, mediator)
        {
        }

        [HttpGet(nameof(SearchUser))]
        [ApiMethodType(Domain.Constants.Enums.MethodType.Get)]
        public async Task<IActionResult> SearchUser([FromQuery]SearchUserQuery query)
        {
            return Ok(await _mediator.Send(query));
        }


    }
}
