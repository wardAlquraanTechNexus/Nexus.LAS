using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.Lookup.UserUseCases.Commands;
using Nexus.LAS.Application.UseCases.Lookup.UserUseCases.Queries.GetLdStuffPerson;
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
        [HttpGet(nameof(GetLdStuffPersons))]
        [ApiMethodType(Domain.Constants.Enums.MethodType.Get)]
        public async Task<IActionResult> GetLdStuffPersons([FromQuery]GetLdStuffPersonQuery query)
        {
            return Ok(await _mediator.Send(query));
        }
        [HttpPost(nameof(LinkUserWithPerson))]
        [ApiMethodType(Domain.Constants.Enums.MethodType.Update)]
        public async Task<IActionResult> LinkUserWithPerson([FromBody]LinkUserPersonCommand command)
        {
            return Ok(await _mediator.Send(command));
        }


    }
}
