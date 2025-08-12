using MediatR;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.MenuUseCases.Commands;
using Nexus.LAS.Application.UseCases.MenuUseCases.Queries;
using Nexus.LAS.Application.UseCases.MenuUseCases.Queries.GetMenu;
using Nexus.LAS.Application.UseCases.Queries.GetDynamicListDto;
using Nexus.LAS.Domain.Entities.Lookup;
using Nexus.LAS.WebApi.Controllers._GenericController;
using System.Threading.Tasks;

namespace Nexus.LAS.WebApi.Controllers.Lookup
{
    
    public class MenusController : GenericController<IMenuService , Menu>
    {
        public MenusController(IMenuService service, IMediator mediator) : base(service, mediator)
        {
        }

        [HttpGet(nameof(GetAllMenus))]
        public async Task<IActionResult> GetAllMenus() 
        {
            GetMenuTreeQuery getMenuTreeQuery = new GetMenuTreeQuery();
            return Ok(await _mediator.Send(getMenuTreeQuery));
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
        [NonAction]
        public override async Task<IActionResult> GetByQuery()
        {
            return Ok(await _service.GetAllAsync(Request.Query));
        }
        [HttpGet]
        public async Task<IActionResult> GetList([FromQuery] GetMenuDtoQuery query)
        {
            var data = await _mediator.Send(query);
            return Ok(data);
        }

        [HttpGet("GetParents/{id}")]
        public async Task<IActionResult> GetParents(int id)
        {
            GetManuParentQuery query = new GetManuParentQuery()
            {
                Id = id
            };
            return Ok(await _mediator.Send(query));
        }
    }
}
