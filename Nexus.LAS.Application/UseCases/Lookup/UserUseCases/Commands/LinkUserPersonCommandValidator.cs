using FluentValidation;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using System.Threading;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.Lookup.UserUseCases.Commands
{
    public class LinkUserPersonCommandValidator : AbstractValidator<LinkUserPersonCommand>
    {
        private readonly IUserRepo _userRepo;

        public LinkUserPersonCommandValidator(IUserRepo userRepo)
        {
            _userRepo = userRepo;

            RuleFor(x => x.PersonId)
                .GreaterThan(0).WithMessage("PersonId is required.");

            // Ensure no other user already uses the same PersonId.
            // If the same username is already linked to this PersonId, allow it.
            RuleFor(x => x)
                .MustAsync(BeUniquePersonId)
                .WithMessage("A user is already linked to this PersonId.");
        }

        private async Task<bool> BeUniquePersonId(LinkUserPersonCommand command, CancellationToken cancellationToken)
        {
            var exists = await _userRepo.ExistsByPersonIdAsync(command.PersonId, command.Username);
            return !exists;
        }
    }
}