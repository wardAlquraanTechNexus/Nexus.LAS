using MediatR;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.MenuUseCases.Queries.GetMenu;
using System.Threading.Tasks;

namespace Nexus.LAS.WebApi.Controllers.Lookup
{
    [Route("api/[controller]")]
    [ApiController]
    [Authorize]
    public class MenusController : ControllerBase
    {
        private readonly IMediator _mediator;

        public MenusController(IMediator mediator)
        {
            _mediator = mediator;
        }

        [HttpGet(nameof(GetAllMenus))]
        public async Task<IActionResult> GetAllMenus() 
        {
            GetMenuTreeQuery getMenuTreeQuery = new GetMenuTreeQuery();
            return Ok(await _mediator.Send(getMenuTreeQuery));
        }
    }
}
