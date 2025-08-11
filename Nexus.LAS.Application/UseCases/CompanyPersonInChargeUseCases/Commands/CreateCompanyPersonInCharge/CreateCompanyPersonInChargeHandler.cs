// CreateCompanyPersonInChargeHandler.cs
using AutoMapper;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyPersonInChargeUseCases.Commands.CreateCompanyPersonInCharge;

public class CreateCompanyPersonInChargeHandler : CreateBaseCommandHandler<CompaniesPersonInCharge, CreateCompanyPersonInChargeCommand, ICompanyPersonInChargeService>
{
    public CreateCompanyPersonInChargeHandler(ICompanyPersonInChargeService service, IMapper mapper) : base(service, mapper)
    {
    }
}