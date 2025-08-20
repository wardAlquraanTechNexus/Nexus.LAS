using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases.CompanyActivityUseCases;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.WebApi.Attributes;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers;

public class CompanyActivityController : GenericController<ICompanyActivityService, CompaniesActivity>
{
    public CompanyActivityController(ICompanyActivityService service, IMediator mediator) : base(service, mediator)
    {
    }

    [NonAction]
    public override Task<IActionResult> BulkUpsertAsync(List<CompaniesActivity> entities)
    {
        return base.BulkUpsertAsync(entities);
    }
    [HttpPost(nameof(BulkUpsertAsync))]
    [ApiMethodType(Domain.Constants.Enums.MethodType.Update)]
    public async Task<IActionResult> BulkUpsertAsync([FromBody] List<UpsertCompanyActivityCommand> commands)
    {
        BulkUpsertCompanyActivityCommand bulkUpsertCompanyActivityCommand = new BulkUpsertCompanyActivityCommand()
        {
            Commands = commands
        };
        return Ok(await _mediator.Send(bulkUpsertCompanyActivityCommand));
    }

}
