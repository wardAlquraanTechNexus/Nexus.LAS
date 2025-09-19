using Microsoft.AspNetCore.Mvc;
using MediatR;
using Nexus.LAS.WebApi.Attributes;
using Nexus.LAS.WebApi.Controllers._GenericController;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Domain.Entities;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCsODUseCases.Queries.GetPaging;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCsODUseCases.Commands.CreateFPCsOD;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCsODUseCases.Commands.UpdateFPCsOD;

namespace Nexus.LAS.WebApi.Controllers
{
    public class FPCODController : GenericController<IFPCODService, FPCOD>
    {
        public FPCODController(IFPCODService service, IMediator mediator) : base(service, mediator)
        {
        }

        [NonAction]
        public override Task<IActionResult> GetByQuery()
        {
            return base.GetByQuery();
        }

        [HttpGet]
        [ApiMethodType(MethodType.Get)]
        public async Task<IActionResult> GetPaging([FromQuery] GetPagingFPCsODQuery query)
        {
            return Ok(await _mediator.Send(query));
        }

        [NonAction]
        public override Task<IActionResult> CreateAsync(FPCOD entity)
        {
            return base.CreateAsync(entity);
        }

        [NonAction]
        public override Task<IActionResult> UpdateAsync(FPCOD entity)
        {
            return base.UpdateAsync(entity);
        }

        [HttpPost]
        [ApiMethodType(MethodType.Insert)]
        public async Task<IActionResult> CreateFPCOD(CreateFPCODCommand command)
        {
            return Ok(await _mediator.Send(command));
        }

        [HttpPut]
        [ApiMethodType(MethodType.Update)]
        public async Task<IActionResult> UpdateFPCOD(UpdateFPCODCommand command)
        {
            return Ok(await _mediator.Send(command));
        }
    }
}