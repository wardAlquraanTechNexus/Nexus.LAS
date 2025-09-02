using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.CompanyBoardMemberUseCases;
using Nexus.LAS.Application.UseCases.CompanyBoardMemberUseCases.Queries.GetPaging;
using Nexus.LAS.Application.UseCases.CompanyBoardUseCases.Commands.Create;
using Nexus.LAS.Application.UseCases.CompanyBoardUseCases.Queries.GetPaging;
using Nexus.LAS.Application.UseCases.CompanyCapitalUseCases.Commands.CreateCompanyCapital;
using Nexus.LAS.Application.UseCases.CompanyCapitalUseCases.Commands.UpdateCompanyCapital;
using Nexus.LAS.Application.UseCases.CompanyCapitalUseCases.Queries.GetPagingCompanyCapital;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.WebApi.Attributes;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers.Companies;

public class CompanyBoardController : GenericController<ICompanyBoardService, CompanyBoard>
{
    public CompanyBoardController(ICompanyBoardService service, IMediator mediator) : base(service, mediator)
    {
    }


    [NonAction]
    public override Task<IActionResult> GetByQuery()
    {
        return base.GetByQuery();
    }


    [HttpGet]
    [ApiMethodType(Domain.Constants.Enums.MethodType.Get)]

    public async Task<IActionResult> GetPaging([FromQuery] GetPagingCompanyBoardQuery query)
    {
        return Ok(await _mediator.Send(query));
    }

    [NonAction]
    public override Task<IActionResult> CreateAsync(CompanyBoard entity)
    {
        return base.CreateAsync(entity);
    }
    [NonAction]
    public override Task<IActionResult> UpdateAsync(CompanyBoard entity)
    {
        return base.UpdateAsync(entity);
    }
    [HttpPost]
    [ApiMethodType(Domain.Constants.Enums.MethodType.Insert)]
    public async Task<IActionResult> CreateCompanyBoard(CreateCompanyBoardCommand command)
    {
        return Ok(await _mediator.Send(command));
    }

    [HttpPut]
    [ApiMethodType(Domain.Constants.Enums.MethodType.Update)]
    public async Task<IActionResult> UpdateCompanyBoard(UpdateCompanyBoardCommand command)
    {
        return Ok(await _mediator.Send(command));
    }

}
