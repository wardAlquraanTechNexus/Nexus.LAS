using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases.CompanyContractUseCases.Commands.CreateCompanyContract;
using Nexus.LAS.Application.UseCases.CompanyContractUseCases.Commands.UpdateCompanyContract;
using Nexus.LAS.Application.UseCases.CompanyContractUseCases.Queries.GetCompanyContractById;
using Nexus.LAS.Application.UseCases.CompanyContractUseCases.Queries.GetPaging;
using Nexus.LAS.Application.UseCases.CompanyEmailUseCases.Queries;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers.Companies;

public class CompanyContractController : GenericController<ICompanyContractService, CompanyContract>
{
    public CompanyContractController(ICompanyContractService service, IMediator mediator) : base(service, mediator)
    {
    }
    [NonAction]
    public override Task<IActionResult> GetByQuery()
    {
        return base.GetByQuery();
    }

    [NonAction]
    public override Task<IActionResult> GetById(int id)
    {
        return base.GetById(id);
    }
    [HttpGet("{id}")]
    public async Task<IActionResult> GetDtoById(int id)
    {
        GetCompanyContractByIdQuery query = new GetCompanyContractByIdQuery()
        {
            Id = id
        };
        return Ok(await _mediator.Send(query));
    }

    [HttpGet]

    public async Task<IActionResult> GetPaging([FromQuery] GetPagingCompanyContractQuery query)
    {
        return Ok(await _mediator.Send(query));
    }

    [NonAction]
    public override Task<IActionResult> CreateAsync(CompanyContract entity)
    {
        return base.CreateAsync(entity);
    }
    [NonAction]
    public override Task<IActionResult> UpdateAsync(CompanyContract entity)
    {
        return base.UpdateAsync(entity);
    }
    [HttpPost]
    public async Task<IActionResult> CreateCompanyContract([FromForm]CreateCompanyContractCommand command)
    {
        return Ok(await _mediator.Send(command));
    }

    [HttpPut(nameof(UpdateByForm))]
    public async Task<IActionResult> UpdateByForm([FromForm]UpdateCompanyContractCommand command)
    {
        return Ok(await _mediator.Send(command));
    }

    [HttpPut]
    public async Task<IActionResult> UpdateByBody([FromBody]UpdateCompanyContractCommand command)
    {
        return Ok(await _mediator.Send(command));
    }
}
