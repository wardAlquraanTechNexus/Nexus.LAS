using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases.CompanyBoardMemberUseCases;
using Nexus.LAS.Application.UseCases.CompanyBoardMemberUseCases.Commands.CreateCompanyBoardMember;
using Nexus.LAS.Application.UseCases.CompanyBoardMemberUseCases.Commands.UpdateCompanyBoardMember;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers.Companies;

public class CompanyBoardMemberController : GenericController<ICompanyBoardMemberService, CompaniesBoardMember>
{
    public CompanyBoardMemberController(ICompanyBoardMemberService service, IMediator mediator) : base(service, mediator)
    {
    }

    [NonAction]
    public override Task<IActionResult> BulkUpsertAsync(List<CompaniesBoardMember> entities)
    {
        return base.BulkUpsertAsync(entities);
    }
    [HttpPost(nameof(BulkUpsertAsync))]
    public async Task<IActionResult> BulkUpsertAsync([FromBody] List<UpsertCompanyBoardMemberCommand> commands)
    {
        BulkUpsertCompanyBoardMemberCommand bulkUpsertCompanyBoardMemberCommand = new BulkUpsertCompanyBoardMemberCommand()
        {
            Commands = commands
        };
        return Ok(await _mediator.Send(bulkUpsertCompanyBoardMemberCommand));
    }

    [NonAction]
    public override Task<IActionResult> CreateAsync(CompaniesBoardMember entity)
    {
        return base.CreateAsync(entity);
    }
    [HttpPost]
    public async Task<IActionResult> CreateUseCase(CreateCompanyBoardMemberCommand command)
    {
        return Ok(await _mediator.Send(command));
    }

    [NonAction]
    public override Task<IActionResult> UpdateAsync(CompaniesBoardMember entity)
    {
        return base.UpdateAsync(entity);
    }
    [HttpPut]
    public async Task<IActionResult> UpdateUseCase(UpdateCompanyBoardMemberCommand command)
    {
        await _mediator.Send(command);
        return Ok();
    }
}
