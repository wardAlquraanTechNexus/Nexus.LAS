using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases.CompanyPersonInChargeUseCases;
using Nexus.LAS.Application.UseCases.CompanyPersonInChargeUseCases.Commands.CreateCompanyPersonInCharge;
using Nexus.LAS.Application.UseCases.CompanyPersonInChargeUseCases.Commands.UpdateCompanyPersonInCharge;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers.Companies;

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

    [NonAction]
    public override Task<IActionResult> CreateAsync(CompaniesPersonInCharge entity)
    {
        return base.CreateAsync(entity);
    }
    [HttpPost]
    public async Task<IActionResult> CreateUseCase(CreateCompanyPersonInChargeCommand command)
    {
        return Ok(await _mediator.Send(command));
    }

    [NonAction]
    public override Task<IActionResult> UpdateAsync(CompaniesPersonInCharge entity)
    {
        return base.UpdateAsync(entity);
    }
    [HttpPut]
    public async Task<IActionResult> UpdateUseCase(UpdateCompanyPersonInChargeCommand command)
    {
        await _mediator.Send(command);
        return Ok();
    }
}
