// UpdateCompanyLicenseHandler.cs
using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyLicenseUseCases.Commands.UpdateCompanyLicense;

public class UpdateCompanyLicenseHandler : UpdateBaseCommandHandler<CompanyLicense, UpdateCompanyLicenseCommand, ICompanyLicenseService>
{
    public UpdateCompanyLicenseHandler(ICompanyLicenseService service, IMapper mapper) : base(service, mapper)
    {
    }

    public override async Task<bool> Handle(UpdateCompanyLicenseCommand request, CancellationToken cancellationToken)
    {
        return await _service.UpdateCompanyLicense(request);
    }
}