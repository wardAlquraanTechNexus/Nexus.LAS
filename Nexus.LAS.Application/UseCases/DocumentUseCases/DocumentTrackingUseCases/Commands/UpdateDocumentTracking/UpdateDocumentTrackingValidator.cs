using FluentValidation;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentTrackingUseCases.Commands.CreateDocumentTracking;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentTrackingUseCases.Commands.UpdateDocumentTracking
{
    internal class UpdateDocumentTrackingValidator : AbstractValidator<UpdateDocumentTrackingCommand>
    {
        private readonly IDocumentTrackingService _service;

        public UpdateDocumentTrackingValidator(IDocumentTrackingService service)
        {
            _service = service;

            RuleFor(x => x.RegisterIdc)
                .NotEmpty();

            RuleFor(x => x.RegisterIdn)
                .NotEmpty();

            RuleFor(x => x)
                .MustAsync(async (command, cancellation) =>
                    !await _service.ExistsByRegisterAsync(command.RegisterIdc, command.RegisterIdn, command.Id))
                .WithMessage("A DocumentTracking with the same RegisterIdc and RegisterIdn already exists.");
        }

    }
}
