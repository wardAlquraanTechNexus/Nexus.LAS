// UpdateCompanyPersonInChargeHandler.cs
using AutoMapper;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyPersonInChargeUseCases.Commands.UpdateCompanyPersonInCharge;

public class UpdateCompanyPersonInChargeHandler : UpdateBaseCommandHandler<CompanyPersonInCharge, UpdateCompanyPersonInChargeCommand, ICompanyPersonInChargeService>
{
    public UpdateCompanyPersonInChargeHandler(ICompanyPersonInChargeService service, IMapper mapper) : base(service, mapper)
    {
    }
}