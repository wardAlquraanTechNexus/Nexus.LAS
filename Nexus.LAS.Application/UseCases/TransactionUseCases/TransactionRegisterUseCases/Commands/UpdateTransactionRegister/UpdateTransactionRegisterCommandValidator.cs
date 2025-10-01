using FluentValidation;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionRegisterUseCases.Commands.UpdateTransactionRegister
{
    public class UpdateTransactionRegisterCommandValidator : AbstractValidator<UpdateTransactionRegisterCommand>
    {
        public UpdateTransactionRegisterCommandValidator(ITransactionRegisterService transactionRegisterService)
        {
            RuleFor(x => x)
                .MustAsync(async (command, cancellation) =>
                {
                    if (command.PrimaryRegister == true)
                    {
                        var exists = await transactionRegisterService.HasPrimaryRegisterAsync(
                            command.RegisterIdc,
                            command.TransactionId,
                            command.Id // Exclude the current record
                        );
                        return !exists;
                    }
                    return true;
                })
                .WithMessage("Only one primary register is allowed per Register Type and transaction.");

            RuleFor(x => x)
                .MustAsync(async (command, cancellation) =>
                {
                    var exists = await transactionRegisterService.ExistsByTransactionAndRegisterAsync(
                        command.TransactionId,
                        command.RegisterId,
                        command.RegisterIdc,
                        command.Id 
                    );
                    return !exists;
                })
                .WithMessage("A register with the same Register already exists for this transaction.");
        }
    }
}