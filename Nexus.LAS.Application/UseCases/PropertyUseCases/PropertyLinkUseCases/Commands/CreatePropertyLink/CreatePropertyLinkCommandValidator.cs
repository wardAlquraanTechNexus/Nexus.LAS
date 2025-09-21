using FluentValidation;
using Nexus.LAS.Domain.Constants;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyLinkUseCases.Commands.CreatePropertyLink
{
    public class CreatePropertyLinkCommandValidator : AbstractValidator<CreatePropertyLinkCommand>
    {
        public CreatePropertyLinkCommandValidator()
        {
            RuleFor(x => x)
                .Custom((command, context) =>
                {
                    if (command.PropertyLinksValue == command.RegisterIdn)
                    {
                        context.AddFailure("PropertyLinksValue", "Cant't create a property link with the same property .");
                    }
                });
        }
    }
}