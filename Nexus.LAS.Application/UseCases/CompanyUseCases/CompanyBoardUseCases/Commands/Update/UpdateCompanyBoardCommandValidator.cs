using FluentValidation;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.CompanyBoardUseCases.Commands.Create;

public class UpdateCompanyBoardCommandValidator : AbstractValidator<UpdateCompanyBoardCommand>
{
    private readonly ICompanyBoardService _service;

    public UpdateCompanyBoardCommandValidator(ICompanyBoardService service)
    {
        _service = service;

        RuleFor(x => x)
         .MustAsync(async (command, cancellation) =>
         {
             if (!command.BoardActive)
                 return true;

             var exists = await _service.ExistsActiveBoardAsync(command.CompanyId , command.Id);
             return !exists;
         })
         .WithMessage("There is already an active board for this company.");
    }
}