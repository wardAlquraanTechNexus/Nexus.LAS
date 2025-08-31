using FluentValidation;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.GroupMenuUseCases.Commands;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.Commands
{
    internal class UpdateGroupMenuCommandValidator : AbstractValidator<UpdateGroupMenuCommand>
    {
        private readonly IGroupMenuService _service;
        public UpdateGroupMenuCommandValidator(IGroupMenuService service)
        {
            _service = service;
            RuleFor(x => x.GroupId)
            .GreaterThan(0).WithMessage("GroupId is required.");

            RuleFor(x => x.MenuId)
                .GreaterThan(0).WithMessage("MenuId is required.");

            // Custom rule to check uniqueness
            RuleFor(x => x)
                .MustAsync(async (command, cancellation) =>
                    !await _service.IsGroupMenuExist(command.GroupId, command.MenuId , command.Id))
                .WithMessage("This GroupId and MenuId combination already exists.");
        }


    }
}
