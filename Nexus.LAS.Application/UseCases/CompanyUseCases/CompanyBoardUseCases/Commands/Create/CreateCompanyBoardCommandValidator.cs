using FluentValidation;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.CompanyBoardUseCases.Commands.Create;

public class CreateCompanyBoardCommandValidator : AbstractValidator<CreateCompanyBoardCommand>
{
    private readonly ICompanyBoardService _service;

    public CreateCompanyBoardCommandValidator(ICompanyBoardService service)
    {
        _service = service;

        RuleFor(x => x)
            .MustAsync(async (command, cancellation) =>
            {
                if (!command.BoardActive)
                    return true;

                var exists = await _service.ExistsActiveBoardAsync(command.CompanyId);
                return !exists;
            })
            .WithMessage("There is already an active board for this company.");
    }
}