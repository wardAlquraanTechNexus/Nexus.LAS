using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases.CompanyBankAccountUseCases;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers;

public class CompanyBankAccountController : GenericController<ICompanyBankAccountService, CompaniesBankAccount>
{
    public CompanyBankAccountController(ICompanyBankAccountService service, IMediator mediator) : base(service, mediator)
    {
    }

    [NonAction]
    public override Task<IActionResult> BulkUpsertAsync(List<CompaniesBankAccount> entities)
    {
        return base.BulkUpsertAsync(entities);
    }
    [HttpPost(nameof(BulkUpsertAsync))]
    public async Task<IActionResult> BulkUpsertAsync([FromBody] List<UpsertCompanyBankAccountCommand> commands)
    {
        BulkUpsertCompanyBankAccountCommand bulkUpsertCompanyBankAccountCommand = new BulkUpsertCompanyBankAccountCommand()
        {
            Commands = commands
        };
        return Ok(await _mediator.Send(bulkUpsertCompanyBankAccountCommand));
    }

}
