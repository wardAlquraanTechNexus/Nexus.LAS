using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyAddressUseCases.Commands.UpdateCompanyAddress;

public class UpdateCompanyAddressHandler : UpdateBaseCommandHandler<CompanyAddress, UpdateCompanyAddressCommand, ICompanyAddressService>
{
    public UpdateCompanyAddressHandler(ICompanyAddressService service, IMapper mapper) : base(service, mapper)
    {
    }
}