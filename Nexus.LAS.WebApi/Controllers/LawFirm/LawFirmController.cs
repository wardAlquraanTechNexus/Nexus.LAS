using Microsoft.AspNetCore.Mvc;
using MediatR;
using Nexus.LAS.WebApi.Attributes;
using Nexus.LAS.WebApi.Controllers._GenericController;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using Nexus.LAS.Domain.Entities.LawFirmEntities;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmUseCases.Queries.GetPaging;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmUseCases.Commands.CreateLawFirm;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmUseCases.Commands.UpdateLawFirm;

namespace Nexus.LAS.WebApi.Controllers
{
    public class LawFirmController : GenericController<ILawFirmService, LawFirm>
    {
        public LawFirmController(ILawFirmService service, IMediator mediator) : base(service, mediator)
        {
        }

        [NonAction]
        public override Task<IActionResult> GetByQuery()
        {
            return base.GetByQuery();
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
    }
}