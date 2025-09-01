using FluentValidation;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.CompanyBoardMemberUseCases.Commands.CreateCompanyBoardMember;
using Nexus.LAS.Application.UseCases.CompanyBoardMemberUseCases.Commands.UpdateCompanyBoardMember;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.CompanyBoardMemberUseCases.Commands
{
    internal class UpdateCompanyBoardMemberCommandValidator: AbstractValidator<UpdateCompanyBoardMemberCommand>
    {
        private readonly ICompanyBoardMemberService _service;

        public UpdateCompanyBoardMemberCommandValidator(ICompanyBoardMemberService service)
        {
            _service = service;

            RuleFor(x => x.PersonId)
                .MustAsync(NotExistActiveInBoard)
                .WithMessage("An active board member with the same PersonId already exists in this CompanyBoard.");
        }

        private async Task<bool> NotExistActiveInBoard(UpdateCompanyBoardMemberCommand command, int personId, CancellationToken cancellationToken)
        {
            var exists = await _service.IsPersonActiveExist(command.CompanyBoardId, command.PersonId , command.Id);

            return !exists;
        }
    }
}
