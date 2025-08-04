using FluentValidation;
using Nexus.LAS.Application.Contracts;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.Commands.UpdatePerson;

public class UpdatePersonCommandValidator : AbstractValidator<UpdatePersonCommand>
{
    private readonly IPersonService _personService;

    public UpdatePersonCommandValidator(IPersonService personService)
    {
        _personService = personService;

        RuleFor(p => p.PersonEnglishName)
            .NotEmpty()
            .WithMessage("PersonEnglishName is required.")
            .MaximumLength(200)
            .WithMessage("PersonEnglishName must not exceed 200 characters.")
            .MustAsync((command, englishName, cancellationToken) => BeUniqueEnglishName(englishName, command.Id, cancellationToken))
            .WithMessage("PersonEnglishName '{PropertyValue}' already exists. Please choose a different name.");

        RuleFor(p => p.PersonArabicName)
            .NotEmpty()
            .WithMessage("PersonArabicName is required.")
            .MaximumLength(200)
            .WithMessage("PersonArabicName must not exceed 200 characters.")
            .MustAsync((command, arabicName, cancellationToken) => BeUniqueArabicName(arabicName, command.Id, cancellationToken))
            .WithMessage("PersonArabicName '{PropertyValue}' already exists. Please choose a different name.");

        RuleFor(p => p.PersonShortName)
            .NotEmpty()
            .WithMessage("PersonShortName is required.")
            .MaximumLength(100)
            .WithMessage("PersonShortName must not exceed 100 characters.")
            .MustAsync((command, shortName, cancellationToken) => BeUniqueShortName(shortName, command.Id, cancellationToken))
            .WithMessage("PersonShortName '{PropertyValue}' already exists. Please choose a different name.");
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