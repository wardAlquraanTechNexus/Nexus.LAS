using AutoMapper;
using FluentValidation;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases.CompanyShareHolderUseCases.Commands.CreateCompanyShareHolder;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static Microsoft.EntityFrameworkCore.DbLoggerCategory.Database;

namespace Nexus.LAS.Application.UseCases.CompanyShareHolderUseCases.Commands
{
    public class CreateCompanyShareHolderCommandValidator : AbstractValidator<CreateCompanyShareHolderCommand>
    {
        private readonly ICompanyShareHolderService _service;
        private readonly ICompanyCapitalService _companyCapitalService;
        private readonly IMapper _mapper;

        public CreateCompanyShareHolderCommandValidator(ICompanyShareHolderService service , ICompanyCapitalService companyCapitalService, IMapper mapper)
        {
            _service = service;
            _companyCapitalService = companyCapitalService;
            _mapper = mapper;

            RuleFor(x => x.CompanyId)
            .MustAsync(async (companyId, cancellation) =>
            {
                return await _companyCapitalService.HasActiveCapitalAsync(companyId);
            })
            .WithMessage("Cannot create a shareholder: the company does not have an active capital.")
            .When(x => x.ShareHolderActive == true); ;


            RuleFor(x => x)
           .MustAsync(async (command, cancellation) =>
           {
               var capital = await _companyCapitalService.GetActiveCapitalByCompanyIdAsync(command.CompanyId);
               if (capital == null)
                   return false; 

               var activeSharesSum = await _service.SumActiveSharesAsync(command.CompanyId);

               var newShares = command.NumbersOfShares ?? 0;
               if (command.ShareHolderActive == false)
                   newShares = 0; 

               return (activeSharesSum + newShares) <= (capital.NumberOfShares ?? 0);
           })
           .WithMessage("Cannot create shareholder: total active shares exceed the company's active capital.")
           .When(x => x.ShareHolderActive == true); ;
        }
        
    }
}
