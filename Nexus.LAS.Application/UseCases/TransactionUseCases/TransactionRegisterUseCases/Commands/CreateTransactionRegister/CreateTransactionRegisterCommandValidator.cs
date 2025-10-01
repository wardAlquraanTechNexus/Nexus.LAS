using FluentValidation;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionRegisterUseCases.Commands.CreateTransactionRegister
{
    public class CreateTransactionRegisterCommandValidator : AbstractValidator<CreateTransactionRegisterCommand>
    {
        public CreateTransactionRegisterCommandValidator(ITransactionRegisterService transactionRegisterService)
        {
            RuleFor(x => x)
                .MustAsync(async (command, cancellation) =>
                {
                    if (command.PrimaryRegister == true)
                    {
                        var exists = await transactionRegisterService.HasPrimaryRegisterAsync(
                            command.RegisterIdc,
                            command.TransactionId
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
                        command.RegisterIdc
                    );
                    return !exists;
                })
                .WithMessage("A register with the same Register already exists for this transaction.");
        }
    }
}