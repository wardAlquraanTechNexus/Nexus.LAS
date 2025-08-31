using FluentValidation;
using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.GroupMenuUseCases.Commands;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.Commands
{
    public class CreateGroupMenuCommandValidator : AbstractValidator<CreateGroupMenuCommand>
    {
        private readonly IGroupMenuService _service;
        public CreateGroupMenuCommandValidator(IGroupMenuService service)
        {
            _service = service;
            RuleFor(x => x.GroupId)
            .GreaterThan(0).WithMessage("GroupId is required.");

            RuleFor(x => x.MenuId)
                .GreaterThan(0).WithMessage("MenuId is required.");

            // Custom rule to check uniqueness
            RuleFor(x => x)
                .MustAsync(async (command, cancellation) =>
                    !await _service.IsGroupMenuExist(command.GroupId , command.MenuId))
                .WithMessage("This GroupId and MenuId combination already exists.");
        }


    }
}
