using FluentValidation;
using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.DynamicListUseCases.Commands;

public class CreateDynamicListCommandValidator : AbstractValidator<CreateDynamicListCommand>
{
    private readonly IDynamicListService _service;

    public CreateDynamicListCommandValidator(IDynamicListService service)
    {
        _service = service;

        RuleFor(x => x.Name)
            .NotEmpty().WithMessage("Menu value is required.")
            .MustAsync(async (command, menuValue, cancellation) =>
                !await MenuExists(menuValue, command.ParentId))
            .WithMessage("Menu value already exists for this main list.");
    }

    private async Task<bool> MenuExists(string? menuValue, int? mainListId)
    {
        if (string.IsNullOrWhiteSpace(menuValue))
            return false;

        return await _service.CheckMenuValueExist(menuValue, mainListId);
    }
}
