using Microsoft.AspNetCore.Mvc;
using MediatR;
using Nexus.LAS.WebApi.Attributes;
using Nexus.LAS.WebApi.Controllers._GenericController;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using Nexus.LAS.Domain.Entities.LawFirmEntities;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmAffiliateUseCases.Queries.GetPaging;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmAffiliateUseCases.Commands.CreateLawFirmAffiliate;
using Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmAffiliateUseCases.Commands.UpdateLawFirmAffiliate;

namespace Nexus.LAS.WebApi.Controllers
{
    public class LawFirmAffiliateController : GenericController<ILawFirmAffiliateService, LawFirmAffiliate>
    {
        public LawFirmAffiliateController(ILawFirmAffiliateService service, IMediator mediator) : base(service, mediator)
        {
        }

        [NonAction]
        public override Task<IActionResult> GetByQuery()
        {
            return base.GetByQuery();
        }

        [HttpGet]
        [ApiMethodType(MethodType.Get)]
        public async Task<IActionResult> GetPaging([FromQuery] GetPagingLawFirmAffiliateQuery query)
        {
            return Ok(await _mediator.Send(query));
        }

        [NonAction]
        public override Task<IActionResult> CreateAsync(LawFirmAffiliate entity)
        {
            return base.CreateAsync(entity);
        }

        [NonAction]
        public override Task<IActionResult> UpdateAsync(LawFirmAffiliate entity)
        {
            return base.UpdateAsync(entity);
        }

        [HttpPost]
        [ApiMethodType(MethodType.Insert)]
        public async Task<IActionResult> CreateLawFirmAffiliate(CreateLawFirmAffiliateCommand command)
        {
            return Ok(await _mediator.Send(command));
        }

        [HttpPut]
        [ApiMethodType(MethodType.Update)]
        public async Task<IActionResult> UpdateLawFirmAffiliate(UpdateLawFirmAffiliateCommand command)
        {
            return Ok(await _mediator.Send(command));
        }
    }
}