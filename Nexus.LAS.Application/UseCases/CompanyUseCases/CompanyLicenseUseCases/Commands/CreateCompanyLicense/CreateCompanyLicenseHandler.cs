// CreateCompanyLicenseHandler.cs
using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyLicenseUseCases.Commands.CreateCompanyLicense;

public class CreateCompanyLicenseHandler : CreateBaseCommandHandler<CompanyLicense, CreateCompanyLicenseCommand, ICompanyLicenseService>
{
    public CreateCompanyLicenseHandler(ICompanyLicenseService service, IMapper mapper) : base(service, mapper)
    {
    }

    public override async Task<int> Handle(CreateCompanyLicenseCommand command, CancellationToken cancellationToken)
    {
        return await _service.CreateCompanyLicense(command);
    }
}