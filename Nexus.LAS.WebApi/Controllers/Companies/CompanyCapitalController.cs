using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases.CompanyActivityUseCases.Commands.CreateCompanyActivity;
using Nexus.LAS.Application.UseCases.CompanyActivityUseCases.Commands.UpdateCompanyActivity;
using Nexus.LAS.Application.UseCases.CompanyActivityUseCases.Queries;
using Nexus.LAS.Application.UseCases.CompanyCapitalUseCases;
using Nexus.LAS.Application.UseCases.CompanyCapitalUseCases.Commands.CreateCompanyCapital;
using Nexus.LAS.Application.UseCases.CompanyCapitalUseCases.Commands.UpdateCompanyCapital;
using Nexus.LAS.Application.UseCases.CompanyCapitalUseCases.Queries.GetPagingCompanyCapital;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers.Companies;

public class CompanyCapitalController : GenericController<ICompanyCapitalService, CompanyCapital>
{
    public CompanyCapitalController(ICompanyCapitalService service, IMediator mediator) : base(service, mediator)
    {
    }

    [NonAction]
    public override Task<IActionResult> GetByQuery()
    {
        return base.GetByQuery();
    }


    [HttpGet]
    public async Task<IActionResult> GetPaging([FromQuery] GetPagingCompanyCapitalQueryy query)
    {
        return Ok(await _mediator.Send(query));
    }

    [NonAction]
    public override Task<IActionResult> CreateAsync(CompanyCapital entity)
    {
        return base.CreateAsync(entity);
    }
    [NonAction]
    public override Task<IActionResult> UpdateAsync(CompanyCapital entity)
    {
        return base.UpdateAsync(entity);
    }
    [HttpPost]
    public async Task<IActionResult> CreateCompanyActivity(CreateCompanyCapitalCommand command)
    {
        return Ok(await _mediator.Send(command));
    }

    [HttpPut]
    public async Task<IActionResult> UpdateCompanyActivity(UpdateCompanyCapitalCommand command)
    {
        return Ok(await _mediator.Send(command));
    }

}
