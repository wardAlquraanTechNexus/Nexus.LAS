using FluentValidation;
using Nexus.LAS.Application.Contracts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.UserGroupUseCases.Commands
{
    public class CreateUserGroupCommandValidator : AbstractValidator<CreateUserGroupCommand>
    {
        private readonly IUserGroupService _userGroupService;

        public CreateUserGroupCommandValidator(IUserGroupService userGroupService)
        {
            _userGroupService = userGroupService;

            RuleFor(x => x.UserId)
            .NotEmpty().WithMessage("UserId is required.");

            RuleFor(x => x.GroupId)
                .NotEmpty().WithMessage("GroupId is required.");

            RuleFor(x => x)
                .MustAsync(BeUniqueUserGroup).WithMessage("This User is already assigned to the selected Group.");
        
        }

         private async Task<bool> BeUniqueUserGroup(CreateUserGroupCommand command, CancellationToken cancellationToken)
        {
            // Checks if a record with same GroupId and UserId exists
            var exists = await _userGroupService.ExistsByGroupIdAndUserIdAsync(command.UserId, command.GroupId);
            return !exists;
        }
    }
}
