using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.CompanyEmailUseCases.Queries;
using Nexus.LAS.Application.UseCases.CompanyPhoneUseCases.Commands.CreateCompanyPhone;
using Nexus.LAS.Application.UseCases.CompanyPhoneUseCases.Commands.UpdateCompanyPhone;
using Nexus.LAS.Application.UseCases.CompanyPhoneUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers.Companies;

public class CompanyPhoneController : GenericController<ICompanyPhoneService, CompanyPhone>
{
    public CompanyPhoneController(ICompanyPhoneService service, IMediator mediator) : base(service, mediator)
    {
    }

  

    [NonAction]
    public override Task<IActionResult> GetAllByQuery()
    {
        return base.GetAllByQuery();
    }

    [HttpGet(nameof(GetAllByQuery))]

    public async Task<IActionResult> GetAll([FromQuery] GetAllCompanyPhoneQuery query)
    {
        return Ok(await _mediator.Send(query));
    }




    [NonAction]
    public override Task<IActionResult> CreateAsync(CompanyPhone entity)
    {
        return base.CreateAsync(entity);
    }
    [NonAction]
    public override Task<IActionResult> UpdateAsync(CompanyPhone entity)
    {
        return base.UpdateAsync(entity);
    }
    [HttpPost]
    public async Task<IActionResult> CreateCompanyPhone(CreateCompanyPhoneCommand command)
    {
        return Ok(await _mediator.Send(command));
    }

    [HttpPut]
    public async Task<IActionResult> UpdateCompanyPhone(UpdateCompanyPhoneCommand command)
    {
        return Ok(await _mediator.Send(command));
    }
}
