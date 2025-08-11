using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases.CompanyBankAccountUseCases;
using Nexus.LAS.Application.UseCases.CompanyBankAccountUseCases.Commands.CreateCompanyBankAccount;
using Nexus.LAS.Application.UseCases.CompanyBankAccountUseCases.Commands.UpdateCompanyBankAccount;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers.Companies;

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

    [NonAction]
    public override Task<IActionResult> CreateAsync(CompaniesBankAccount entity)
    {
        return base.CreateAsync(entity);
    }
    [HttpPost]
    public async Task<IActionResult> CreateUseCase(CreateCompanyBankAccountCommand command)
    {
        return Ok(await _mediator.Send(command));
    }

    [NonAction]
    public override Task<IActionResult> UpdateAsync(CompaniesBankAccount entity)
    {
        return base.UpdateAsync(entity);
    }
    [HttpPut]
    public async Task<IActionResult> UpdateUseCase(UpdateCompanyBankAccountCommand command)
    {
        await _mediator.Send(command);
        return Ok();
    }

}
