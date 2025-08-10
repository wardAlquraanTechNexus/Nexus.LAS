using FluentValidation;
using Nexus.LAS.Application.Contracts;

namespace Nexus.LAS.Application.UseCases.CompanyUseCases.Commands.UpdateCompany;

public class UpdateCompanyCommandValidator : AbstractValidator<UpdateCompanyCommand>
{
    private readonly ICompanyService _companyService;

    public UpdateCompanyCommandValidator(ICompanyService companyService)
    {
        _companyService = companyService;

        RuleFor(p => p.CompanyEnglishName)
            .NotEmpty()
            .WithMessage("Company English Name is required.")
            .MaximumLength(200)
            .WithMessage("Company English Name must not exceed 200 characters.")
            .MustAsync((command, englishName, cancellationToken) => BeUniqueEnglishName(englishName, command.Id, cancellationToken))
            .WithMessage("Company English Name '{PropertyValue}' already exists. Please choose a different name.");

        RuleFor(p => p.CompanyArabicName)
            .NotEmpty()
            .WithMessage("Company Arabic Name is required.")
            .MaximumLength(200)
            .WithMessage("Company Arabic Name must not exceed 200 characters.")
            .MustAsync((command, arabicName, cancellationToken) => BeUniqueArabicName(arabicName, command.Id, cancellationToken))
            .WithMessage("Company Arabic Name '{PropertyValue}' already exists. Please choose a different name.");

        RuleFor(p => p.CompanyShortName)
            .NotEmpty()
            .WithMessage("Company Short Name is required.")
            .MaximumLength(100)
            .WithMessage("Company Short Name must not exceed 100 characters.")
            .MustAsync((command, shortName, cancellationToken) => BeUniqueShortName(shortName, command.Id, cancellationToken))
            .WithMessage("Company Short Name '{PropertyValue}' already exists. Please choose a different name.");
    }

    private async Task<bool> BeUniqueEnglishName(string companyEnglishName, int excludeId, CancellationToken cancellationToken)
    {
        return await _companyService.IsCompanyEnglishNameUniqueAsync(companyEnglishName, excludeId);
    }

    private async Task<bool> BeUniqueArabicName(string companyArabicName, int excludeId, CancellationToken cancellationToken)
    {
        return await _companyService.IsCompanyArabicNameUniqueAsync(companyArabicName, excludeId);
    }

    private async Task<bool> BeUniqueShortName(string companyShortName, int excludeId, CancellationToken cancellationToken)
    {
        return await _companyService.IsCompanyShortNameUniqueAsync(companyShortName, excludeId);
    }
}