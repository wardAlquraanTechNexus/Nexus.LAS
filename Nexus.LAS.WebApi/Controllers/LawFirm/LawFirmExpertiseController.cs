using Microsoft.AspNetCore.Mvc;
using MediatR;
using Nexus.LAS.WebApi.Attributes;
using Nexus.LAS.WebApi.Controllers._GenericController;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using Nexus.LAS.Domain.Entities.LawFirmEntities;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmExpertiseUseCases.Queries.GetPaging;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmExpertiseUseCases.Commands.CreateLawFirmExpertise;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmExpertiseUseCases.Commands.UpdateLawFirmExpertise;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmExpertiseUseCases.Queries.GetAll;

namespace Nexus.LAS.WebApi.Controllers
{
    public class LawFirmExpertiseController : GenericController<ILawFirmExpertiseService, LawFirmExpertise>
    {
        public LawFirmExpertiseController(ILawFirmExpertiseService service, IMediator mediator) : base(service, mediator)
        {
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
        [ApiMethodType(MethodType.Get)]
        public async Task<IActionResult> GetAll([FromQuery] GetAllLawFirmExpertiseQuery query)
        {
            return Ok(await _mediator.Send(query));
        }


        [HttpGet]
        [ApiMethodType(MethodType.Get)]
        public async Task<IActionResult> GetPaging([FromQuery] GetPagingLawFirmExpertiseQuery query)
        {
            return Ok(await _mediator.Send(query));
        }

        [NonAction]
        public override Task<IActionResult> CreateAsync(LawFirmExpertise entity)
        {
            return base.CreateAsync(entity);
        }

        [NonAction]
        public override Task<IActionResult> UpdateAsync(LawFirmExpertise entity)
        {
            return base.UpdateAsync(entity);
        }

        [HttpPost]
        [ApiMethodType(MethodType.Insert)]
        public async Task<IActionResult> CreateLawFirmExpertise(CreateLawFirmExpertiseCommand command)
        {
            return Ok(await _mediator.Send(command));
        }

        [HttpPut]
        [ApiMethodType(MethodType.Update)]
        public async Task<IActionResult> UpdateLawFirmExpertise(UpdateLawFirmExpertiseCommand command)
        {
            return Ok(await _mediator.Send(command));
        }
    }
}