using FluentValidation;
using Nexus.LAS.Application.Contracts.Presistence;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.Commands.UpdatePerson;

public class UpdatePersonCommandValidator : AbstractValidator<UpdatePersonCommand>
{
    private readonly IPersonService _personService;

    public UpdatePersonCommandValidator(IPersonService personService)
    {
        _personService = personService;

        RuleFor(p => p.PersonEnglishName)
            .NotEmpty()
            .WithMessage("Person English Name is required.")
            .MaximumLength(200)
            .WithMessage("Person English Name must not exceed 200 characters.")
            .MustAsync((command, englishName, cancellationToken) => BeUniqueEnglishName(englishName, command.Id, cancellationToken))
            .WithMessage("Person English Name '{PropertyValue}' already exists. Please choose a different name.");

        RuleFor(p => p.PersonArabicName)
            .NotEmpty()
            .WithMessage("Person Arabic Name is required.")
            .MaximumLength(200)
            .WithMessage("Person Arabic Name must not exceed 200 characters.")
            .MustAsync((command, arabicName, cancellationToken) => BeUniqueArabicName(arabicName, command.Id, cancellationToken))
            .WithMessage("Person Arabic Name '{PropertyValue}' already exists. Please choose a different name.");

        RuleFor(p => p.PersonShortName)
            .NotEmpty()
            .WithMessage("Person Short Name is required.")
            .MaximumLength(100)
            .WithMessage("Person Short Name must not exceed 100 characters.")
            .MustAsync((command, shortName, cancellationToken) => BeUniqueShortName(shortName, command.Id, cancellationToken))
            .WithMessage("Person Short Name '{PropertyValue}' already exists. Please choose a different name.");
    }

    private async Task<bool> BeUniqueEnglishName(string personEnglishName, int excludeId, CancellationToken cancellationToken)
    {
        return await _personService.IsPersonEnglishNameUniqueAsync(personEnglishName, excludeId);
    }

    private async Task<bool> BeUniqueArabicName(string personArabicName, int excludeId, CancellationToken cancellationToken)
    {
        return await _personService.IsPersonArabicNameUniqueAsync(personArabicName, excludeId);
    }

    private async Task<bool> BeUniqueShortName(string personShortName, int excludeId, CancellationToken cancellationToken)
    {
        return await _personService.IsPersonShortNameUniqueAsync(personShortName, excludeId);
    }
}