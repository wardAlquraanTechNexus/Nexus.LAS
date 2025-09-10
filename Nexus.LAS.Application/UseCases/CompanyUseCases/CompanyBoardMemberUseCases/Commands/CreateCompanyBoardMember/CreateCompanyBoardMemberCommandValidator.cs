using FluentValidation;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.CompanyBoardMemberUseCases.Commands.CreateCompanyBoardMember;
using System.Threading;
using System.Threading.Tasks;

public class CreateCompanyBoardMemberCommandValidator : AbstractValidator<CreateCompanyBoardMemberCommand>
{
    private readonly ICompanyBoardMemberService _service;

    public CreateCompanyBoardMemberCommandValidator(ICompanyBoardMemberService service)
    {
        _service = service;

        RuleFor(x => x.PersonId)
            .MustAsync(NotExistActiveInBoard)
            .WithMessage("An active board member with the same PersonId already exists in this CompanyBoard.");
    }

    private async Task<bool> NotExistActiveInBoard(CreateCompanyBoardMemberCommand command, int personId, CancellationToken cancellationToken)
    {
        var exists = await _service.IsPersonActiveExist(command.CompanyId , command.PersonId);

        return !exists;
    }
}