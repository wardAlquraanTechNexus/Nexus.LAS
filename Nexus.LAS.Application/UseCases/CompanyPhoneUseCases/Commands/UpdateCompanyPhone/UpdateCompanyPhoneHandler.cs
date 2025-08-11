// UpdateCompanyPhoneHandler.cs
using AutoMapper;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyPhoneUseCases.Commands.UpdateCompanyPhone;

public class UpdateCompanyPhoneHandler : UpdateBaseCommandHandler<CompaniesPhone, UpdateCompanyPhoneCommand, ICompanyPhoneService>
{
    public UpdateCompanyPhoneHandler(ICompanyPhoneService service, IMapper mapper) : base(service, mapper)
    {
    }
}