using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases.CompanyOtherContractUseCases;
using Nexus.LAS.Application.UseCases.CompanyOtherContractUseCases.Commands.CreateCompanyOtherContract;
using Nexus.LAS.Application.UseCases.CompanyOtherContractUseCases.Commands.UpdateCompanyOtherContract;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers.Companies;

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


    [NonAction]
    public override Task<IActionResult> CreateAsync(CompaniesOtherContract entity)
    {
        return base.CreateAsync(entity);
    }
    [HttpPost]
    public async Task<IActionResult> CreateUseCase(CreateCompanyOtherContractCommand command)
    {
        return Ok(await _mediator.Send(command));
    }

    [NonAction]
    public override Task<IActionResult> UpdateAsync(CompaniesOtherContract entity)
    {
        return base.UpdateAsync(entity);
    }
    [HttpPut]
    public async Task<IActionResult> UpdateUseCase(UpdateCompanyOtherContractCommand command)
    {
        await _mediator.Send(command);
        return Ok();
    }
}
