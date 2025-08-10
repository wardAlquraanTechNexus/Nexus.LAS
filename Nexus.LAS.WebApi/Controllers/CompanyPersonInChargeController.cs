using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases.CompanyPersonInChargeUseCases;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers;

public class CompanyPersonInChargeController : GenericController<ICompanyPersonInChargeService, CompaniesPersonInCharge>
{
    public CompanyPersonInChargeController(ICompanyPersonInChargeService service, IMediator mediator) : base(service, mediator)
    {
    }

    [NonAction]
    public override Task<IActionResult> BulkUpsertAsync(List<CompaniesPersonInCharge> entities)
    {
        return base.BulkUpsertAsync(entities);
    }
    [HttpPost(nameof(BulkUpsertAsync))]
    public async Task<IActionResult> BulkUpsertAsync([FromBody] List<UpsertCompanyPersonInChargeCommand> commands)
    {
        BulkUpsertCompanyPersonInChargeCommand bulkUpsertCompanyPersonInChargeCommand = new BulkUpsertCompanyPersonInChargeCommand()
        {
            Commands = commands
        };
        return Ok(await _mediator.Send(bulkUpsertCompanyPersonInChargeCommand));
    }

}
