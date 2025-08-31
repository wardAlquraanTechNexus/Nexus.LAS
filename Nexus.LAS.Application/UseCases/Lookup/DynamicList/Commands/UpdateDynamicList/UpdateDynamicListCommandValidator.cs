using FluentValidation;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.Commands.UpdateDynamicList;

public class UpdateDynamicListCommandValidator : AbstractValidator<UpdateDynamicListCommand>
{
    private readonly IDynamicListService _service;

    public UpdateDynamicListCommandValidator(IDynamicListService service)
    {
        _service = service;

        RuleFor(x => x.MenuValue)
            .NotEmpty().WithMessage("Menu value is required.")
            .MustAsync(async (command, menuValue, cancellation) =>
                !await MenuValueExists(menuValue, command.MainListId, command.Id))
            .WithMessage("Menu value already exists for this main list.");
    }

    private async Task<bool> MenuValueExists(string? menuValue, int? mainListId, int currentId)
    {
        if (string.IsNullOrWhiteSpace(menuValue))
            return false;

        // Check if another record exists with same MenuValue & MainListId but different Id
        return await _service.CheckMenuValueExist(menuValue, mainListId, currentId);
    }
}
