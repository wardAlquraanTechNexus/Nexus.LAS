using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.CompanyOtherContractUseCases.Commands.CreateCompanyOtherContract;
using Nexus.LAS.Application.UseCases.CompanyOtherContractUseCases.Commands.UpdateCompanyOtherContract;
using Nexus.LAS.Application.UseCases.CompanyUseCases.CompanyOtherContractUseCases.Queries;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.WebApi.Attributes;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers.Companies;

public class CompanyOtherContractController : GenericController<ICompanyOtherContractService, CompanyOtherContract>
{
    public CompanyOtherContractController(ICompanyOtherContractService service, IMediator mediator) : base(service, mediator)
    {
    }

    [NonAction]
    public override Task<IActionResult> CreateAsync(CompanyOtherContract entity)
    {
        return base.CreateAsync(entity);
    }

    [HttpPost]
    [ApiMethodType(Domain.Constants.Enums.MethodType.Insert)]
    public async Task<IActionResult> CreateAsync([FromBody] CreateCompanyOtherContractCommand command)
    {
        return Ok(await _mediator.Send(command));
    }

    [NonAction]
    public override Task<IActionResult> UpdateAsync(CompanyOtherContract entity)
    {
        return base.UpdateAsync(entity);
    }
    [HttpPut]
    [ApiMethodType(Domain.Constants.Enums.MethodType.Update)]
    public async Task<IActionResult> UpdateAsync([FromBody] UpdateCompanyOtherContractCommand command)
    {
        return Ok(await _mediator.Send(command));
    }
    [HttpGet(nameof(GetPaging))]
    [ApiMethodType(Domain.Constants.Enums.MethodType.Get)]
    public async Task<IActionResult> GetPaging([FromQuery] GetPagingCompanyOtherContractQuery command)
    {
        return Ok(await _mediator.Send(command));
    }

}
