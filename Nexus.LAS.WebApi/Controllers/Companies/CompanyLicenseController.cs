using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.CompanyLicenseUseCases.Commands.CreateCompanyLicense;
using Nexus.LAS.Application.UseCases.CompanyLicenseUseCases.Commands.UpdateCompanyLicense;
using Nexus.LAS.Application.UseCases.CompanyLicenseUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers.Companies;

public class CompanyLicenseController : GenericController<ICompanyLicenseService, CompanyLicense>
{
    public CompanyLicenseController(ICompanyLicenseService service, IMediator mediator) : base(service, mediator)
    {
    }
    [NonAction]
    public override Task<IActionResult> GetByQuery()
    {
        return base.GetByQuery();
    }  


    [HttpGet]
    public async Task<IActionResult> GetPaging([FromQuery]GetCompanyLicensePagingQuery query)
    {
        return Ok(await _mediator.Send(query));
    }

    [NonAction]
    public override Task<IActionResult> CreateAsync(CompanyLicense entity)
    {
        return base.CreateAsync(entity);
    }
    [NonAction]
    public override Task<IActionResult> UpdateAsync(CompanyLicense entity)
    {
        return base.UpdateAsync(entity);
    }
    [HttpPost]
    public async Task<IActionResult> CreateCompanyLicense(CreateCompanyLicenseCommand command)
    {
        return Ok(await _mediator.Send(command));
    }

    [HttpPut]
    public async Task<IActionResult> UpdateCompanyLicense(UpdateCompanyLicenseCommand command)
    {
        return Ok(await _mediator.Send(command));
    }
    
}
