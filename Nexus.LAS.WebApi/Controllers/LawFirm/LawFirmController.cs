using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using Nexus.LAS.Application.UseCases.CompanyUseCases.Commands.BulkChangePrivate;
using Nexus.LAS.Application.UseCases.CompanyUseCases.Commands.BulkChangeStatus;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmUseCases.Commands.BulkChangePrivate;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmUseCases.Commands.BulkChangeStatus;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmUseCases.Commands.CreateLawFirm;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmUseCases.Commands.UpdateLawFirm;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmUseCases.Queries.ExportToExcel;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmUseCases.Queries.ExportToPdf;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmUseCases.Queries.GetAll;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmUseCases.Queries.GetLawFirmDto;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmUseCases.Queries.GetPaging;
using Nexus.LAS.Application.UseCases.PersonUseCases.Queries;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Domain.Entities.LawFirmEntities;
using Nexus.LAS.WebApi.Attributes;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers
{
    public class LawFirmController : GenericController<ILawFirmService, LawFirm>
    {
        public LawFirmController(ILawFirmService service, IMediator mediator) : base(service, mediator)
        {
        }


        public override async Task<IActionResult> GetById(int id)
        {
            GetLawFirmDtoQuery query = new(id);
            return Ok(await _mediator.Send(query));
        }

        [NonAction]
        public override Task<IActionResult> GetByQuery()
        {
            return base.GetByQuery();
        }

        [NonAction]
        public override Task<IActionResult> GetAllByQuery()
        {
            return base.GetAllByQuery();
        }

        [HttpGet(nameof(GetAllByQuery))]
        [ApiMethodType(Domain.Constants.Enums.MethodType.Get)]
        public virtual async Task<IActionResult> GetAll([FromQuery]GetAllLawFirmQuery query)
        {
            return Ok(await _mediator.Send(query));
        }

        [HttpGet]
        [ApiMethodType(MethodType.Get)]
        public async Task<IActionResult> GetPaging([FromQuery] GetPagingLawFirmQuery query)
        {
            return Ok(await _mediator.Send(query));
        }

        [NonAction]
        public override Task<IActionResult> CreateAsync(LawFirm entity)
        {
            return base.CreateAsync(entity);
        }

        [NonAction]
        public override Task<IActionResult> UpdateAsync(LawFirm entity)
        {
            return base.UpdateAsync(entity);
        }

        [HttpPost]
        [ApiMethodType(MethodType.Insert)]
        public async Task<IActionResult> CreateLawFirm(CreateLawFirmCommand command)
        {
            return Ok(await _mediator.Send(command));
        }

        [HttpPut]
        [ApiMethodType(MethodType.Update)]
        public async Task<IActionResult> UpdateLawFirm(UpdateLawFirmCommand command)
        {
            return Ok(await _mediator.Send(command));
        }

        [HttpPut(nameof(BulkChangeStatus))]
        [ApiMethodType(Domain.Constants.Enums.MethodType.Admin)]
        public async Task<IActionResult> BulkChangeStatus([FromBody] BulkChangeLawFirmStatusCommand command)
        {
            return Ok(await _mediator.Send(command));
        }
        [HttpPut(nameof(BulkChangePrivate))]
        [ApiMethodType(Domain.Constants.Enums.MethodType.Admin)]
        public async Task<IActionResult> BulkChangePrivate([FromBody] BulkChangeLawFirmPrivateCommand command)
        {
            return Ok(await _mediator.Send(command));
        }


        [HttpGet(nameof(ExportToExcel))]
        public async Task<IActionResult> ExportToExcel()
        {
            var query = new ExportLawFirmToExcelQuery { Query = Request.Query };
            return Ok(await _mediator.Send(query));
        }

        [HttpGet(nameof(ExportToPdf))]
        [ApiMethodType(Domain.Constants.Enums.MethodType.Get)]
        public async Task<IActionResult> ExportToPdf([FromQuery] int id)
        {
            var query = new ExportLawFirmToPdfQuery { Id = id };
            return Ok(await _mediator.Send(query));
        }


    }
}