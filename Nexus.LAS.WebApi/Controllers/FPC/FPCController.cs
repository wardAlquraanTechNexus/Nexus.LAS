using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCUseCases.Commands.BulkChangePrivate;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCUseCases.Commands.BulkChangeStatus;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCUseCases.Commands.CreateFPC;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCUseCases.Commands.UpdateFPC;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCUseCases.Queries.ExportToExcel;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCUseCases.Queries.GetById;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Domain.Entities;
using Nexus.LAS.WebApi.Attributes;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers
{
    public class FPCController : GenericController<IFPCService, FPC>
    {
        public FPCController(IFPCService service, IMediator mediator) : base(service, mediator)
        {
        }

        [NonAction]
        public override Task<IActionResult> GetByQuery()
        {
            return base.GetByQuery();
        }
        [HttpGet("{id}")]
        public override async Task<IActionResult> GetById(int id)
        {
            var query = new GetFPCByIdQuery(id);
            return Ok(await _mediator.Send(query));

        }

        [HttpGet]
        [ApiMethodType(MethodType.Get)]
        public async Task<IActionResult> GetPaging([FromQuery] GetPagingFPCQuery query)
        {
            return Ok(await _mediator.Send(query));
        }

        [NonAction]
        public override Task<IActionResult> CreateAsync(FPC entity)
        {
            return base.CreateAsync(entity);
        }

        [NonAction]
        public override Task<IActionResult> UpdateAsync(FPC entity)
        {
            return base.UpdateAsync(entity);
        }

        [HttpPost]
        [ApiMethodType(MethodType.Insert)]
        public async Task<IActionResult> CreateFPC(CreateFPCCommand command)
        {
            return Ok(await _mediator.Send(command));
        }

        [HttpPut]
        [ApiMethodType(MethodType.Update)]
        public async Task<IActionResult> UpdateFPC(UpdateFPCCommand command)
        {
            return Ok(await _mediator.Send(command));
        }

        [HttpPut(nameof(BulkChangeStatus))]
        [ApiMethodType(Domain.Constants.Enums.MethodType.Admin)]
        public async Task<IActionResult> BulkChangeStatus([FromBody] BulkChangeFPCStatusCommand command)
        {
            return Ok(await _mediator.Send(command));
        }
        [HttpPut(nameof(BulkChangePrivate))]
        [ApiMethodType(Domain.Constants.Enums.MethodType.Admin)]
        public async Task<IActionResult> BulkChangePrivate([FromBody] BulkChangeFPCPrivateCommand command)
        {
            return Ok(await _mediator.Send(command));
        }

        [HttpGet(nameof(ExportToExcel))]
        public async Task<IActionResult> ExportToExcel()
        {
            var query = new ExportFPCToExcelQuery { Query = Request.Query };
            return Ok(await _mediator.Send(query));
        }
    }
}