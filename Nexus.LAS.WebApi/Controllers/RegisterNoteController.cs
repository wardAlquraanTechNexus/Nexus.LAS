using MediatR;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.RegisterNoteUseCases.Commands.CreateRegisterNote;
using Nexus.LAS.Application.RegisterNoteUseCases.Commands.UpdateRegisterNote;
using Nexus.LAS.Domain.Entities.RegisterEntities;
using Nexus.LAS.WebApi.Controllers._GenericController;

namespace Nexus.LAS.WebApi.Controllers;

public class RegisterNoteController : GenericController<IRegisterNoteService, RegistersNote>
{
    public RegisterNoteController(IRegisterNoteService service, IMediator mediator) : base(service, mediator)
    {
    }

    [NonAction]
    public override Task<IActionResult> CreateAsync(RegistersNote entity)
    {
        return base.CreateAsync(entity);
    }
    [HttpPost]
    public async Task<IActionResult> CreateUseCase(CreateRegisterNoteCommand command)
    {
        return Ok(await _mediator.Send(command));
    }

    [NonAction]
    public override Task<IActionResult> UpdateAsync(RegistersNote entity)
    {
        return base.UpdateAsync(entity);
    }
    [HttpPut]
    public async Task<IActionResult> UpdateUseCase(UpdateRegisterNoteCommand command)
    {
        await _mediator.Send(command);
        return Ok();
    }
}
