using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases.CompanyEmailUseCases;
using Nexus.LAS.Application.UseCases.CompanyEmailUseCases.Commands.CreateCompanyEmail;
using Nexus.LAS.Application.UseCases.CompanyEmailUseCases.Commands.UpdateCompanyEmail;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers.Companies;

public class CompanyEmailController : GenericController<ICompanyEmailService, CompaniesEmail>
{
    public CompanyEmailController(ICompanyEmailService service, IMediator mediator) : base(service, mediator)
    {
    }

    [NonAction]
    public override Task<IActionResult> BulkUpsertAsync(List<CompaniesEmail> entities)
    {
        return base.BulkUpsertAsync(entities);
    }
    [HttpPost(nameof(BulkUpsertAsync))]
    public async Task<IActionResult> BulkUpsertAsync([FromBody] List<UpsertCompanyEmailCommand> commands)
    {
        BulkUpsertCompanyEmailCommand bulkUpsertCompanyEmailCommand = new BulkUpsertCompanyEmailCommand()
        {
            Commands = commands
        };
        return Ok(await _mediator.Send(bulkUpsertCompanyEmailCommand));
    }

    [NonAction]
    public override Task<IActionResult> CreateAsync(CompaniesEmail entity)
    {
        return base.CreateAsync(entity);
    }
    [HttpPost]
    public async Task<IActionResult> CreateUseCase(CreateCompanyEmailCommand command)
    {
        return Ok(await _mediator.Send(command));
    }

    [NonAction]
    public override Task<IActionResult> UpdateAsync(CompaniesEmail entity)
    {
        return base.UpdateAsync(entity);
    }
    [HttpPut]
    public async Task<IActionResult> UpdateUseCase(UpdateCompanyEmailCommand command)
    {
        await _mediator.Send(command);
        return Ok();
    }

}
