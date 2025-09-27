using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmCounselUseCases.Commands.CreateLawFirmCounsel;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmCounselUseCases.Commands.UpdateLawFirmCounsel;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmCounselUseCases.Queries.GetPaging;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmExpertiseUseCases.Commands.CreateLawFirmExpertise;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmExpertiseUseCases.Commands.UpdateLawFirmExpertise;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmExpertiseUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Domain.Entities.LawFirmEntities;
using Nexus.LAS.WebApi.Attributes;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers
{
    public class LawFirmCounselController : GenericController<ILawFirmCounselService, LawFirmCounsel>
    {
        public LawFirmCounselController(ILawFirmCounselService service, IMediator mediator)
            : base(service, mediator)
        {
        }

        [NonAction]
        public override Task<IActionResult> GetByQuery()
        {
            return base.GetByQuery();
        }

        [HttpGet]
        [ApiMethodType(MethodType.Get)]
        public async Task<IActionResult> GetPaging([FromQuery] GetPagingLawFirmCounselQuery query)
        {
            return Ok(await _mediator.Send(query));
        }

        [NonAction]
        public override Task<IActionResult> CreateAsync(LawFirmCounsel entity)
        {
            return base.CreateAsync(entity);
        }

        [NonAction]
        public override Task<IActionResult> UpdateAsync(LawFirmCounsel entity)
        {
            return base.UpdateAsync(entity);
        }

        [HttpPost]
        [ApiMethodType(MethodType.Insert)]
        public async Task<IActionResult> CreateLawFirmCounsel(CreateLawFirmCounselCommand command)
        {
            return Ok(await _mediator.Send(command));
        }

        [HttpPut]
        [ApiMethodType(MethodType.Update)]
        public async Task<IActionResult> UpdateLawFirmCounsel(UpdateLawFirmCounselCommand command)
        {
            return Ok(await _mediator.Send(command));
        }
    }
}