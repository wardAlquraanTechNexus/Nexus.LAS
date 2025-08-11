// UpdateCompanyLicenseHandler.cs
using AutoMapper;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyLicenseUseCases.Commands.UpdateCompanyLicense;

public class UpdateCompanyLicenseHandler : UpdateBaseCommandHandler<CompaniesLicense, UpdateCompanyLicenseCommand, ICompanyLicenseService>
{
    public UpdateCompanyLicenseHandler(ICompanyLicenseService service, IMapper mapper) : base(service, mapper)
    {
    }
}