using FluentValidation;
using Nexus.LAS.Application.Contracts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.CompanyShareHolderUseCases.Commands.UpdateCompanyShareHolder
{
    public class UpdateCompanyShareHolderCommandValidator : AbstractValidator<UpdateCompanyShareHolderCommand>
    {
        private readonly ICompanyCapitalService _companyCapitalService;
        private readonly ICompanyShareHolderService _service;

        public UpdateCompanyShareHolderCommandValidator(
        ICompanyCapitalService companyCapitalService,
        ICompanyShareHolderService service)
        {
            _companyCapitalService = companyCapitalService;
            _service = service;

            RuleFor(x => x.CompanyId)
               .MustAsync(async (companyId, cancellation) =>
               {
                   return await _companyCapitalService.HasActiveCapitalAsync(companyId);
               })
               .WithMessage("Cannot create a shareholder: the company does not have an active capital.")
               .When(x => x.ShareHolderActive == true);


            RuleFor(x => x)
                .MustAsync(async (command, cancellation) =>
                {
                    if (command.ShareHolderActive != true)
                        return true; // skip if shareholder is inactive

                    var capital = await _companyCapitalService.GetActiveCapitalByCompanyIdAsync(command.CompanyId);
                    if (capital == null)
                        return false; // No active capital

                    var activeSharesSum = await _service.SumActiveSharesAsync(
                        command.CompanyId, command.Id 
                    );

                    var newShares = command.NumbersOfShares ?? 0;

                    return (activeSharesSum + newShares) <= (capital.NumberOfShares ?? 0);
                })
                .WithMessage("Cannot update shareholder: total active shares would exceed the company's active capital.")
                .When(x => x.ShareHolderActive == true); ;
        }
    }
}
