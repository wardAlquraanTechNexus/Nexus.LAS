using FluentValidation;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionRegisterUseCases.Commands.CreateTransactionRegister;
using Nexus.LAS.Domain.Constants;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionRegisterUseCases.Commands.CreatePCTransactionRegister
{
    public class CreatePCTransactionRegisterValidator : AbstractValidator<CreatePCTransactionRegisterCommand>
    {
        public CreatePCTransactionRegisterValidator(ITransactionRegisterService transactionRegisterService)
        {
            RuleFor(x => x)
                .MustAsync(async (command, cancellation) =>
                {
                    if (command.PrimaryRegister == true)
                    {
                        var exists = await transactionRegisterService.HasPrimaryRegisterAsync(
                            EntityIDCs.Person,
                            command.TransactionId
                        );
                        return !exists;
                    }

                    

                    return true;
                })
                .WithMessage("Only one primary Person is allowed per Register Type and transaction.");
            
            RuleFor(x => x)
                .MustAsync(async (command, cancellation) =>
                {
                    if (command.PrimaryRegister == true)
                    {
                        var exists = await transactionRegisterService.HasPrimaryRegisterAsync(
                            EntityIDCs.Company,
                            command.TransactionId
                        );
                        return !exists;
                    }

                    

                    return true;
                })
                .WithMessage("Only one primary company is allowed per Register Type and transaction.");

            RuleFor(x => x)
                .MustAsync(async (command, cancellation) =>
                {
                    var exists = await transactionRegisterService.ExistsByTransactionAndRegisterAsync(
                        command.TransactionId,
                        command.CompanyId,
                        EntityIDCs.Company
                    );

                    return !exists;
                })
                .WithMessage("this company already exists for this transaction.");

            RuleFor(x => x)
                .MustAsync(async (command, cancellation) =>
                {
                    var exists = await transactionRegisterService.ExistsByTransactionAndRegisterAsync(
                        command.TransactionId,
                        command.PersonId,
                        EntityIDCs.Person
                    );

                    return !exists;
                })
                .WithMessage("this person already exists for this transaction.");
        }
    }
}
