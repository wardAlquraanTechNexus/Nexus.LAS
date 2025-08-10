using FluentValidation;
using Nexus.LAS.Application.Contracts;

namespace Nexus.LAS.Application.UseCases.CompanyUseCases.Commands.CreateCompany;

public class CreateCompanyCommandValidator : AbstractValidator<CreateCompanyCommand>
{
    private readonly ICompanyService _companyService;

    public CreateCompanyCommandValidator(ICompanyService companyService)
    {
        _companyService = companyService;

        RuleFor(p => p.CompanyEnglishName)
            .NotEmpty()
            .WithMessage("Company English Name is required.")
            .MaximumLength(200)
            .WithMessage("Company English Name must not exceed 200 characters.")
            .MustAsync(BeUniqueEnglishName)
            .WithMessage("Company English Name '{PropertyValue}' already exists. Please choose a different name.");

        RuleFor(p => p.CompanyArabicName)
            .NotEmpty()
            .WithMessage("Company Arabic Name is required.")
            .MaximumLength(200)
            .WithMessage("Company Arabic Name must not exceed 200 characters.")
            .MustAsync(BeUniqueArabicName)
            .WithMessage("Company Arabic Name '{PropertyValue}' already exists. Please choose a different name.");

        RuleFor(p => p.CompanyShortName)
            .NotEmpty()
            .WithMessage("Company Short Name is required.")
            .MaximumLength(100)
            .WithMessage("Company Short Name must not exceed 100 characters.")
            .MustAsync(BeUniqueShortName)
            .WithMessage("Company Short Name '{PropertyValue}' already exists. Please choose a different name.");
    }

    private async Task<bool> BeUniqueEnglishName(string companyEnglishName, CancellationToken cancellationToken)
    {
        return await _companyService.IsCompanyEnglishNameUniqueAsync(companyEnglishName);
    }

    private async Task<bool> BeUniqueArabicName(string companyArabicName, CancellationToken cancellationToken)
    {
        return await _companyService.IsCompanyArabicNameUniqueAsync(companyArabicName);
    }

    private async Task<bool> BeUniqueShortName(string companyShortName, CancellationToken cancellationToken)
    {
        return await _companyService.IsCompanyShortNameUniqueAsync(companyShortName);
    }
}