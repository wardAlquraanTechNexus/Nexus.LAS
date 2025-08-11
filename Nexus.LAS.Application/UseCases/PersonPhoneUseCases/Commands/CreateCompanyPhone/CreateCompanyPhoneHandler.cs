// CreateCompanyPhoneHandler.cs
using AutoMapper;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyPhoneUseCases.Commands.CreateCompanyPhone;

public class CreateCompanyPhoneHandler : CreateBaseCommandHandler<CompaniesPhone, CreateCompanyPhoneCommand, ICompanyPhoneService>
{
    public CreateCompanyPhoneHandler(ICompanyPhoneService service, IMapper mapper) : base(service, mapper)
    {
    }
}