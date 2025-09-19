using Microsoft.AspNetCore.Mvc;
using MediatR;
using Nexus.LAS.WebApi.Attributes;
using Nexus.LAS.WebApi.Controllers._GenericController;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using Nexus.LAS.Domain.Entities.LawFirmEntities;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmBranchUseCases.Queries.GetPaging;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmBranchUseCases.Commands.CreateLawFirmBranch;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmBranchUseCases.Commands.UpdateLawFirmBranch;

namespace Nexus.LAS.WebApi.Controllers
{
    public class LawFirmBranchController : GenericController<ILawFirmBranchService, LawFirmBranch>
    {
        public LawFirmBranchController(ILawFirmBranchService service, IMediator mediator) : base(service, mediator)
        {
        }

        [NonAction]
        public override Task<IActionResult> GetByQuery()
        {
            return base.GetByQuery();
        }

        [HttpGet]
        [ApiMethodType(MethodType.Get)]
        public async Task<IActionResult> GetPaging([FromQuery] GetPagingLawFirmBranchQuery query)
        {
            return Ok(await _mediator.Send(query));
        }

        [NonAction]
        public override Task<IActionResult> CreateAsync(LawFirmBranch entity)
        {
            return base.CreateAsync(entity);
        }

        [NonAction]
        public override Task<IActionResult> UpdateAsync(LawFirmBranch entity)
        {
            return base.UpdateAsync(entity);
        }

        [HttpPost]
        [ApiMethodType(MethodType.Insert)]
        public async Task<IActionResult> CreateLawFirmBranch(CreateLawFirmBranchCommand command)
        {
            return Ok(await _mediator.Send(command));
        }

        [HttpPut]
        [ApiMethodType(MethodType.Update)]
        public async Task<IActionResult> UpdateLawFirmBranch(UpdateLawFirmBranchCommand command)
        {
            return Ok(await _mediator.Send(command));
        }
    }
}