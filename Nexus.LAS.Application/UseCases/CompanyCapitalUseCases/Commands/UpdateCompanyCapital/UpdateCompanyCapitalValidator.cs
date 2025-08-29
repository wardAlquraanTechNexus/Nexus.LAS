using AutoMapper;
using FluentValidation;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases.CompanyCapitalUseCases.Commands.UpdateCompanyCapital;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.CompanyCapitalUseCases.Commands
{
    public class UpdateCompanyCapitalValidator:AbstractValidator<UpdateCompanyCapitalCommand>
    {
        private readonly ICompanyCapitalService _service;
        private readonly IMapper _mapper;

        public UpdateCompanyCapitalValidator(ICompanyCapitalService service, IMapper mapper)
        {
            _service = service;
            _mapper = mapper;


            RuleFor(x => x)
           .MustAsync(async (capital, cancellation) =>
           {
               try
               {
                   await _service.ValidateSingleActiveCapital(_mapper.Map<CompanyCapital>(capital));
                   return true;
               }
               catch
               {
                   return false;
               }
           })
           .WithMessage("Only one active capital record is allowed per company.");
        }


    }
}
