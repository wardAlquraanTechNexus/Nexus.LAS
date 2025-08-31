using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.CompanyChamberOfCommerceUseCases.Commands.CreateCompanyChamberOfCommerce;
using Nexus.LAS.Application.UseCases.CompanyChamberOfCommerceUseCases.Commands.UpdateCompanyChamberOfCommerce;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers.Companies;

public class CompanyChamberOfCommerceController : GenericController<ICompanyChamberOfCommerceService, CompanyChamberOfCommerce>
{
    public CompanyChamberOfCommerceController(ICompanyChamberOfCommerceService service, IMediator mediator) : base(service, mediator)
    {
    }

 

    [NonAction]
    public override Task<IActionResult> CreateAsync(CompanyChamberOfCommerce entity)
    {
        return base.CreateAsync(entity);
    }
    [NonAction]
    public override Task<IActionResult> UpdateAsync(CompanyChamberOfCommerce entity)
    {
        return base.UpdateAsync(entity);
    }
    [HttpPost]
    public async Task<IActionResult> CreateCompanyChamperPfCommerce(CreateCompanyChamberOfCommerceCommand command)
    {
        return Ok(await _mediator.Send(command));
    }

    [HttpPut]
    public async Task<IActionResult> UpdateCompanyChamperOfCommerce(UpdateCompanyChamberOfCommerceCommand command)
    {
        return Ok(await _mediator.Send(command));
    }

}
