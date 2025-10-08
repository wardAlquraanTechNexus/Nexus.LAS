using FluentValidation;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCUseCases.Queries.GetPaging;
using System.Threading;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.FPCUseCases.FPCUseCases.Commands.CreateFPC
{
    public class CreateFPCCommandValidator : AbstractValidator<CreateFPCCommand>
    {
        private readonly IFPCService _fpcService;

        public CreateFPCCommandValidator(IFPCService fpcService)
        {
            _fpcService = fpcService;

            RuleFor(x => x.RegisterIdn)
                .NotEmpty().WithMessage("RegisterIdn is required.");

            RuleFor(x => x.RegisterIdc)
                .NotEmpty().WithMessage("RegisterIdc is required.");

            RuleFor(x => x)
                .MustAsync(NotExistWithSameRegisterIdnAndIdc)
                .WithMessage("An FPC with this register already exists.");
        }

        private async Task<bool> NotExistWithSameRegisterIdnAndIdc(CreateFPCCommand command, CancellationToken cancellationToken)
        {
            var query = new GetPagingFPCQuery()
            {
                RegisterIdn = command.RegisterIdn,
                RegisterIdc = command.RegisterIdc
            };

            var result = await _fpcService.SearchFPCs(query);
            return result.TotalRecords == 0;
        }
    }
}