// CreateCompanyLicenseHandler.cs
using AutoMapper;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyLicenseUseCases.Commands.CreateCompanyLicense;

public class CreateCompanyLicenseHandler : CreateBaseCommandHandler<CompaniesLicense, CreateCompanyLicenseCommand, ICompanyLicenseService>
{
    public CreateCompanyLicenseHandler(ICompanyLicenseService service, IMapper mapper) : base(service, mapper)
    {
    }
}