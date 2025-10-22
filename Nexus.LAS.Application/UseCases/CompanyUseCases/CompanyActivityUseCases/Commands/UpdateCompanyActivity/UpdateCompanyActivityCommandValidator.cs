using FluentValidation;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.CompanyActivityUseCases.Commands.CreateCompanyActivity;
using Nexus.LAS.Application.UseCases.CompanyActivityUseCases.Commands.UpdateCompanyActivity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.CompanyUseCases.CompanyActivityUseCases.Commands.UpdateCompanyActivity
{
    public class UpdateCompanyActivityCommandValidator: AbstractValidator<UpdateCompanyActivityCommand>
    {
        private readonly ICompanyActivityService _service;

        public UpdateCompanyActivityCommandValidator(ICompanyActivityService service)
        {
            _service = service;

            RuleFor(x => x)
                .MustAsync(async (command, cancellation) =>
                {
                    // Prevent creating a duplicate activity for the same company
                    var exists = await _service.ExistsByCompanyAndActivityAsync(command.CompanyId, command.Activity, command.Id);
                    return !exists;
                })
                .WithMessage("This activity already exists for the company.");
        }
    }
}
