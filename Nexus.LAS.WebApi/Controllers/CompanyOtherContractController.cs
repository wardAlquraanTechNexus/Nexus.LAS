using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases.CompanyOtherContractUseCases;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers;

public class CompanyOtherContractController : GenericController<ICompanyOtherContractService, CompaniesOtherContract>
{
    public CompanyOtherContractController(ICompanyOtherContractService service, IMediator mediator) : base(service, mediator)
    {
    }

    [NonAction]
    public override Task<IActionResult> BulkUpsertAsync(List<CompaniesOtherContract> entities)
    {
        return base.BulkUpsertAsync(entities);
    }
    [HttpPost(nameof(BulkUpsertAsync))]
    public async Task<IActionResult> BulkUpsertAsync([FromBody] List<UpsertCompanyOtherContractCommand> commands)
    {
        BulkUpsertCompanyOtherContractCommand bulkUpsertCompanyOtherContractCommand = new BulkUpsertCompanyOtherContractCommand()
        {
            Commands = commands
        };
        return Ok(await _mediator.Send(bulkUpsertCompanyOtherContractCommand));
    }

}
