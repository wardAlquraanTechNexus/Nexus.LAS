using FluentValidation;
using Nexus.LAS.Domain.Constants;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyLinkUseCases.Commands.UpdatePropertyLink
{
    public class UpdatePropertyLinkCommandValidator : AbstractValidator<UpdatePropertyLinkCommand>
    {
        public UpdatePropertyLinkCommandValidator()
        {
            RuleFor(x => x)
                .Custom((command, context) =>
                {
                    if (command.PropertyLinksValue == command.RegisterIdn)
                    {
                        context.AddFailure("PropertyLinksValue", "Can't update a property link with the same property.");
                    }
                });
        }
    }
}