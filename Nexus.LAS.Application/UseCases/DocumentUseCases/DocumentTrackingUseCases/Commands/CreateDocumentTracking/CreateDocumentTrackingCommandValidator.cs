using FluentValidation;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using System.Threading;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentTrackingUseCases.Commands.CreateDocumentTracking
{
    public class CreateDocumentTrackingCommandValidator : AbstractValidator<CreateDocumentTrackingCommand>
    {
        private readonly IDocumentTrackingService _service;

        public CreateDocumentTrackingCommandValidator(IDocumentTrackingService service)
        {
            _service = service;

            RuleFor(x => x.RegisterIdc)
                .NotEmpty();

            RuleFor(x => x.RegisterIdn)
                .NotEmpty();

            RuleFor(x => x)
                .MustAsync(async (command, cancellation) =>
                    !await _service.ExistsByRegisterAsync(command.RegisterIdc, command.RegisterIdn, null))
                .WithMessage("A DocumentTracking with the same RegisterIdc and RegisterIdn already exists.");
        }
    }
}