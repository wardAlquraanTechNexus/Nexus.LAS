using MediatR;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;
using Nexus.LAS.Domain.Entities.Base;
using Nexus.LAS.WebApi.Attributes;

namespace Nexus.LAS.WebApi.Controllers._GenericController
{
    [Route("api/[controller]")]
    [ApiController]
    [Authorize(Policy = "PermissionPolicy")]
    public class GenericController<Service,Entity> : ControllerBase where Service : IGenericService<Entity> where Entity: BaseEntity
    {
        protected readonly IMediator _mediator;
        protected readonly Service _service;

        public GenericController(Service service, IMediator mediator)
        {
            _service = service;
            _mediator = mediator;
        }
        [HttpGet]
        [ApiMethodType(Domain.Constants.Enums.MethodType.Get)]
        public virtual async Task<IActionResult> GetByQuery() 
        {
            return Ok(await _service.GetAsync(Request.Query));
        }
        [HttpGet(nameof(GetAllByQuery))]
        [ApiMethodType(Domain.Constants.Enums.MethodType.Get)]
        public virtual async Task<IActionResult> GetAllByQuery() 
        {
            return Ok(await _service.GetAllAsync(Request.Query));
        }
        [HttpGet("{id}")]
        [ApiMethodType(Domain.Constants.Enums.MethodType.Get)]
        public virtual async Task<IActionResult> GetById(int id) 
        {
            var res = await _service.GetAsync(id);
            return Ok(res);
            
        }
        [HttpPost]
        [ApiMethodType(Domain.Constants.Enums.MethodType.Insert)]
        public virtual async Task<IActionResult> CreateAsync(Entity entity)
        {
            var res = await _service.CreateAsync(entity);
            return StatusCode(201 , res);

        }

        [HttpPost(nameof(BulkUpsertAsync))]
        [ApiMethodType(Domain.Constants.Enums.MethodType.Update)]
        public virtual async Task<IActionResult> BulkUpsertAsync(List<Entity> entities)
        {
            var res = await _service.BulkUpsertAsync(entities);
            return StatusCode(201, res);

        }

        [HttpPut]
        [ApiMethodType(Domain.Constants.Enums.MethodType.Update)]
        public virtual async Task<IActionResult> UpdateAsync(Entity entity)
        {
            await _service.UpdateAsync(entity);
            return Ok(200);

        }
        [HttpDelete("{id}")]
        [ApiMethodType(Domain.Constants.Enums.MethodType.Delete)]
        public async Task<IActionResult> DeleteAsync(int id)
        {
            await _service.DeleteAsync(id);
            return Ok(200);

        }
    }
}
