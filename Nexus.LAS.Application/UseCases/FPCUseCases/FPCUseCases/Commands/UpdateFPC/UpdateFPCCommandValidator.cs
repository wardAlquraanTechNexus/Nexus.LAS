using FluentValidation;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCUseCases.Queries.GetPaging;
using System.Threading;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.FPCUseCases.FPCUseCases.Commands.UpdateFPC
{
    public class UpdateFPCCommandValidator : AbstractValidator<UpdateFPCCommand>
    {
        private readonly IFPCService _fpcService;

        public UpdateFPCCommandValidator(IFPCService fpcService)
        {
            _fpcService = fpcService;


            RuleFor(x => x.RegisterIdn)
                .NotEmpty().WithMessage("RegisterIdn is required.");

            RuleFor(x => x.RegisterIdc)
                .NotEmpty().WithMessage("RegisterIdc is required.");

            RuleFor(x => x)
                .MustAsync(NotExistWithSameRegisterIdnAndIdc)
                .WithMessage("An FPC with the this register already exists.");
        }

        private async Task<bool> NotExistWithSameRegisterIdnAndIdc(UpdateFPCCommand command, CancellationToken cancellationToken)
        {
            var query = new GetPagingFPCQuery
            {
                RegisterIdn = command.RegisterIdn,
                RegisterIdc = command.RegisterIdc,
                ExecludedId = command.Id
            };

            var result = await _fpcService.SearchFPCs(query);

            return result.TotalRecords == 0;
        }
    }
}