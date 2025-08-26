using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases.CompanyActivityUseCases;
using Nexus.LAS.Application.UseCases.CompanyActivityUseCases.Commands.CreateCompanyActivity;
using Nexus.LAS.Application.UseCases.CompanyActivityUseCases.Commands.UpdateCompanyActivity;
using Nexus.LAS.Application.UseCases.CompanyActivityUseCases.Queries;
using Nexus.LAS.Application.UseCases.CompanyLicenseUseCases.Commands.CreateCompanyLicense;
using Nexus.LAS.Application.UseCases.CompanyLicenseUseCases.Commands.UpdateCompanyLicense;
using Nexus.LAS.Application.UseCases.CompanyLicenseUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.WebApi.Attributes;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers;

public class CompanyActivityController : GenericController<ICompanyActivityService, CompanyActivity>
{
    public CompanyActivityController(ICompanyActivityService service, IMediator mediator) : base(service, mediator)
    {
    }

    [NonAction]
    public override Task<IActionResult> GetByQuery()
    {
        return base.GetByQuery();
    }


    [HttpGet]
    public async Task<IActionResult> GetPaging([FromQuery] GetPagingCompanyActivityQuery query)
    {
        return Ok(await _mediator.Send(query));
    }

    [NonAction]
    public override Task<IActionResult> CreateAsync(CompanyActivity entity)
    {
        return base.CreateAsync(entity);
    }
    [NonAction]
    public override Task<IActionResult> UpdateAsync(CompanyActivity entity)
    {
        return base.UpdateAsync(entity);
    }
    [HttpPost]
    public async Task<IActionResult> CreateCompanyActivity(CreateCompanyActivityCommand command)
    {
        return Ok(await _mediator.Send(command));
    }

    [HttpPut]
    public async Task<IActionResult> UpdateCompanyActivity(UpdateCompanyActivityCommand command)
    {
        return Ok(await _mediator.Send(command));
    }
}
