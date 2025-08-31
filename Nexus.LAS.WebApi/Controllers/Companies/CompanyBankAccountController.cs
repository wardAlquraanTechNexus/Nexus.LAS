using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.CompanyBankAccountUseCases;
using Nexus.LAS.Application.UseCases.CompanyBankAccountUseCases.Commands.CreateCompanyBankAccount;
using Nexus.LAS.Application.UseCases.CompanyBankAccountUseCases.Commands.UpdateCompanyBankAccount;
using Nexus.LAS.Application.UseCases.CompanyBankAccountUseCases.Queries.GetAll;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.WebApi.Attributes;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers.Companies;

public class CompanyBankAccountController : GenericController<ICompanyBankAccountService, CompanyBankAccount>
{
    public CompanyBankAccountController(ICompanyBankAccountService service, IMediator mediator) : base(service, mediator)
    {
    }

    [NonAction]
    public override Task<IActionResult> BulkUpsertAsync(List<CompanyBankAccount> entities)
    {
        return base.BulkUpsertAsync(entities);
    }
    [HttpPost(nameof(BulkUpsertAsync))]
    [ApiMethodType(Domain.Constants.Enums.MethodType.Update)]
    public async Task<IActionResult> BulkUpsertAsync([FromBody] List<UpsertCompanyBankAccountCommand> commands)
    {
        BulkUpsertCompanyBankAccountCommand bulkUpsertCompanyBankAccountCommand = new BulkUpsertCompanyBankAccountCommand()
        {
            Commands = commands
        };
        return Ok(await _mediator.Send(bulkUpsertCompanyBankAccountCommand));
    }



    [NonAction]
    public override Task<IActionResult> GetAllByQuery()
    {
        return base.GetAllByQuery();
    }



    [HttpGet(nameof(GetAllByQuery))]
    public async Task<IActionResult> GetAll([FromQuery] GetAllCompanyBankAccountQuery query)
    {
        return Ok(await _mediator.Send(query));
    }

    [NonAction]
    public override Task<IActionResult> CreateAsync(CompanyBankAccount entity)
    {
        return base.CreateAsync(entity);
    }
    [NonAction]
    public override Task<IActionResult> UpdateAsync(CompanyBankAccount entity)
    {
        return base.UpdateAsync(entity);
    }
    [HttpPost]
    public async Task<IActionResult> CreateCompanyBankAccount(CreateCompanyBankAccountCommand command)
    {
        return Ok(await _mediator.Send(command));
    }

    [HttpPut]
    public async Task<IActionResult> UpdateCompanyAddress(UpdateCompanyBankAccountCommand command)
    {
        return Ok(await _mediator.Send(command));
    }

}
