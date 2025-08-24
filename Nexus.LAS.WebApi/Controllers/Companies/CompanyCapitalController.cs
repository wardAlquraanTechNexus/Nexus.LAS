using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases.CompanyCapitalUseCases;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers.Companies;

public class CompanyCapitalController : GenericController<ICompanyCapitalService, CompanyCapital>
{
    public CompanyCapitalController(ICompanyCapitalService service, IMediator mediator) : base(service, mediator)
    {
    }

    [NonAction]
    public override Task<IActionResult> BulkUpsertAsync(List<CompanyCapital> entities)
    {
        return base.BulkUpsertAsync(entities);
    }
    [HttpPost(nameof(BulkUpsertAsync))]
    public async Task<IActionResult> BulkUpsertAsync([FromBody] List<UpsertCompanyCapitalCommand> commands)
    {
        BulkUpsertCompanyCapitalCommand bulkUpsertCompanyCapitalCommand = new BulkUpsertCompanyCapitalCommand()
        {
            Commands = commands
        };
        return Ok(await _mediator.Send(bulkUpsertCompanyCapitalCommand));
    }

}
