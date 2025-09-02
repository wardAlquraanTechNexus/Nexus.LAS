using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.CompanyEmailUseCases.Commands.CreateCompanyEmail;
using Nexus.LAS.Application.UseCases.CompanyEmailUseCases.Commands.UpdateCompanyEmail;
using Nexus.LAS.Application.UseCases.CompanyEmailUseCases.Queries;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.WebApi.Attributes;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers.Companies;

public class CompanyEmailController : GenericController<ICompanyEmailService, CompanyEmail>
{
    public CompanyEmailController(ICompanyEmailService service, IMediator mediator) : base(service, mediator)
    {
    }

    [NonAction]
    public override Task<IActionResult> GetAllByQuery()
    {
        return base.GetAllByQuery();
    }

    [HttpGet(nameof(GetAllByQuery))]
    [ApiMethodType(Domain.Constants.Enums.MethodType.Get)]
    public async Task<IActionResult> GetAll([FromQuery] GetAllCompanyEmailQuery query)
    {
        return Ok(await _mediator.Send(query));
    }

    [NonAction]
    public override Task<IActionResult> CreateAsync(CompanyEmail entity)
    {
        return base.CreateAsync(entity);
    }
    [NonAction]
    public override Task<IActionResult> UpdateAsync(CompanyEmail entity)
    {
        return base.UpdateAsync(entity);
    }
    [HttpPost]
    [ApiMethodType(Domain.Constants.Enums.MethodType.Insert)]
    public async Task<IActionResult> CreateCompanyEmail(CreateCompanyEmailCommand command)
    {
        return Ok(await _mediator.Send(command));
    }

    [HttpPut]
    [ApiMethodType(Domain.Constants.Enums.MethodType.Update)]
    public async Task<IActionResult> UpdateCompanyEmail(UpdateCompanyEmailCommand command)
    {
        return Ok(await _mediator.Send(command));
    }

}
