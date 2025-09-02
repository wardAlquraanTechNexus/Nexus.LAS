using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.CompanyAddressUseCases.Commands.CreateCompanyAddress;
using Nexus.LAS.Application.UseCases.CompanyAddressUseCases.Commands.UpdateCompanyAddress;
using Nexus.LAS.Application.UseCases.CompanyAddressUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.WebApi.Attributes;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers.Companies;

public class CompanyAddressController : GenericController<ICompanyAddressService, CompanyAddress>
{
    public CompanyAddressController(ICompanyAddressService service, IMediator mediator) : base(service, mediator)
    {
    }
    [NonAction]
    public override Task<IActionResult> GetAllByQuery()
    {
        return base.GetAllByQuery();
    }



    [HttpGet(nameof(GetAllByQuery))]
    [ApiMethodType(Domain.Constants.Enums.MethodType.Get)]
    public async Task<IActionResult> GetAll([FromQuery] GetAllCompanyAddressQuery query)
    {
        return Ok(await _mediator.Send(query));
    }

    [NonAction]
    public override Task<IActionResult> CreateAsync(CompanyAddress entity)
    {
        return base.CreateAsync(entity);
    }
    [NonAction]
    public override Task<IActionResult> UpdateAsync(CompanyAddress entity)
    {
        return base.UpdateAsync(entity);
    }
    [HttpPost]
    [ApiMethodType(Domain.Constants.Enums.MethodType.Insert)]
    public async Task<IActionResult> CreateCompanyAddress(CreateCompanyAddressCommand command)
    {
        return Ok(await _mediator.Send(command));
    }

    [HttpPut]
    [ApiMethodType(Domain.Constants.Enums.MethodType.Update)]
    public async Task<IActionResult> UpdateCompanyAddress(UpdateCompanyAddressCommand command)
    {
        return Ok(await _mediator.Send(command));
    }
}
