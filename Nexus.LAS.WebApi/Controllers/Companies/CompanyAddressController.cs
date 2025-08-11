using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases.CompanyAddressUseCases;
using Nexus.LAS.Application.UseCases.CompanyAddressUseCases.Commands.CreateCompanyAddress;
using Nexus.LAS.Application.UseCases.CompanyAddressUseCases.Commands.UpdateCompanyAddress;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers.Companies;

public class CompanyAddressController : GenericController<ICompanyAddressService, CompaniesAddress>
{
    public CompanyAddressController(ICompanyAddressService service, IMediator mediator) : base(service, mediator)
    {
    }

    [NonAction]
    public override Task<IActionResult> BulkUpsertAsync(List<CompaniesAddress> entities)
    {
        return base.BulkUpsertAsync(entities);
    }
    [HttpPost(nameof(BulkUpsertAsync))]
    public async Task<IActionResult> BulkUpsertAsync([FromBody] List<UpsertCompanyAddressCommand> commands)
    {
        BulkUpsertCompanyAddressCommand bulkUpsertCompanyEmailCommand = new BulkUpsertCompanyAddressCommand()
        {
            Commands = commands
        };
        return Ok(await _mediator.Send(bulkUpsertCompanyEmailCommand));
    }

    [NonAction]
    public override Task<IActionResult> CreateAsync(CompaniesAddress entity)
    {
        return base.CreateAsync(entity);
    }
    [HttpPost]
    public async Task<IActionResult> CreateUseCase(CreateCompanyAddressCommand command)
    {
        return Ok(await _mediator.Send(command));
    }

    [NonAction]
    public override Task<IActionResult> UpdateAsync(CompaniesAddress entity)
    {
        return base.UpdateAsync(entity);
    }
    [HttpPut]
    public async Task<IActionResult> UpdateUseCase(UpdateCompanyAddressCommand command)
    {
        await _mediator.Send(command);
        return Ok();
    }
}
