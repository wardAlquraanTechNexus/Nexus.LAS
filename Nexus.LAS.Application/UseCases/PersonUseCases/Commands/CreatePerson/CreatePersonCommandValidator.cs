using FluentValidation;
using Nexus.LAS.Application.Contracts;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.Commands.CreatePerson;

public class CreatePersonCommandValidator : AbstractValidator<CreatePersonCommand>
{
    private readonly IPersonService _personService;

    public CreatePersonCommandValidator(IPersonService personService)
    {
        _personService = personService;

        RuleFor(p => p.PersonEnglishName)
            .NotEmpty()
            .WithMessage("Person English Name is required.")
            .MaximumLength(200)
            .WithMessage("Person English Name must not exceed 200 characters.")
            .MustAsync(BeUniqueEnglishName)
            .WithMessage("Person English Name '{PropertyValue}' already exists. Please choose a different name.");

        RuleFor(p => p.PersonArabicName)
            .NotEmpty()
            .WithMessage("Person Arabic Name is required.")
            .MaximumLength(200)
            .WithMessage("Person Arabic Name must not exceed 200 characters.")
            .MustAsync(BeUniqueArabicName)
            .WithMessage("Person Arabic Name '{PropertyValue}' already exists. Please choose a different name.");

        RuleFor(p => p.PersonShortName)
            .NotEmpty()
            .WithMessage("Person Short Name is required.")
            .MaximumLength(100)
            .WithMessage("Person Short Name must not exceed 100 characters.")
            .MustAsync(BeUniqueShortName)
            .WithMessage("Person Short Name '{PropertyValue}' already exists. Please choose a different name.");
    }

    private async Task<bool> BeUniqueEnglishName(string personEnglishName, CancellationToken cancellationToken)
    {
        return await _personService.IsPersonEnglishNameUniqueAsync(personEnglishName);
    }

    private async Task<bool> BeUniqueArabicName(string personArabicName, CancellationToken cancellationToken)
    {
        return await _personService.IsPersonArabicNameUniqueAsync(personArabicName);
    }

    private async Task<bool> BeUniqueShortName(string personShortName, CancellationToken cancellationToken)
    {
        return await _personService.IsPersonShortNameUniqueAsync(personShortName);
    }
}