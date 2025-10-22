using FluentValidation;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.CompanyActivityUseCases.Commands.CreateCompanyActivity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.CompanyUseCases.CompanyActivityUseCases.Commands.CreateCompanyActivity
{
    public class CreateCompanyActivityCommandValidator : AbstractValidator<CreateCompanyActivityCommand>
    {
        private readonly ICompanyActivityService _service;

        public CreateCompanyActivityCommandValidator(ICompanyActivityService service)
        {
            _service = service;

            RuleFor(x => x)
                .MustAsync(async (command, cancellation) =>
                {
                    // Prevent creating a duplicate activity for the same company
                    var exists = await _service.ExistsByCompanyAndActivityAsync(command.CompanyId, command.Activity);
                    return !exists;
                })
                .WithMessage("This activity already exists for the company.");
        }
    }
}
