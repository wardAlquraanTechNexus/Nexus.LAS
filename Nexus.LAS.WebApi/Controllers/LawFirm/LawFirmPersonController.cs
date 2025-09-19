using Microsoft.AspNetCore.Mvc;
using MediatR;
using Nexus.LAS.WebApi.Attributes;
using Nexus.LAS.WebApi.Controllers._GenericController;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using Nexus.LAS.Domain.Entities.LawFirmEntities;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmPersonUseCases.Queries.GetPaging;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmPersonUseCases.Commands.CreateLawFirmPerson;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmPersonUseCases.Commands.UpdateLawFirmPerson;

namespace Nexus.LAS.WebApi.Controllers
{
    public class LawFirmPersonController : GenericController<ILawFirmPersonService, LawFirmPerson>
    {
        public LawFirmPersonController(ILawFirmPersonService service, IMediator mediator) : base(service, mediator)
        {
        }

        [NonAction]
        public override Task<IActionResult> GetByQuery()
        {
            return base.GetByQuery();
        }

        [HttpGet]
        [ApiMethodType(MethodType.Get)]
        public async Task<IActionResult> GetPaging([FromQuery] GetPagingLawFirmPersonQuery query)
        {
            return Ok(await _mediator.Send(query));
        }

        [NonAction]
        public override Task<IActionResult> CreateAsync(LawFirmPerson entity)
        {
            return base.CreateAsync(entity);
        }

        [NonAction]
        public override Task<IActionResult> UpdateAsync(LawFirmPerson entity)
        {
            return base.UpdateAsync(entity);
        }

        [HttpPost]
        [ApiMethodType(MethodType.Insert)]
        public async Task<IActionResult> CreateLawFirmPerson(CreateLawFirmPersonCommand command)
        {
            return Ok(await _mediator.Send(command));
        }

        [HttpPut]
        [ApiMethodType(MethodType.Update)]
        public async Task<IActionResult> UpdateLawFirmPerson(UpdateLawFirmPersonCommand command)
        {
            return Ok(await _mediator.Send(command));
        }
    }
}