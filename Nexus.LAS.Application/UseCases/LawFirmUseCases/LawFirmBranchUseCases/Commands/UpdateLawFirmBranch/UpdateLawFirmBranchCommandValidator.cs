using FluentValidation;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmBranchUseCases.Commands.UpdateLawFirmBranch
{
    public class UpdateLawFirmBranchCommandValidator : AbstractValidator<UpdateLawFirmBranchCommand>
    {
        public UpdateLawFirmBranchCommandValidator(ILawFirmBranchService lawFirmBranchService)
        {
            RuleFor(x => x)
                .MustAsync(async (command, cancellation) =>
                {
                    if (command.BranchPrimary)
                    {
                        var exists = await lawFirmBranchService.HasPrimaryBranchAsync(command.LawFirmId, command.Id);
                        return !exists;
                    }
                    return true;
                })
                .WithMessage("Only one primary branch is allowed per law firm.");

            //RuleFor(x=> x)
            //    .MustAsync(async (command , cancellation) =>
            //    {
            //        if (!command.BranchPrimary)
            //        {
            //            var hasPrimary = await lawFirmBranchService.HasPrimaryBranchAsync(command.LawFirmId, command.Id);
            //            return hasPrimary;
            //        }
            //        return true;
            //    })
            //    .WithMessage("At least one primary branch is required per law firm.");

        }
    }
}