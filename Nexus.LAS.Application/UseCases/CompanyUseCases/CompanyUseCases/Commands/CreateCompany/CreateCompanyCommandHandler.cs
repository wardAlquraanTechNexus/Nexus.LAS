using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyUseCases.Commands;

public class CreateCompanyCommandHandler : CreateBaseCommandHandler<Company, CreateCompanyCommand, ICompanyService>
{
    public CreateCompanyCommandHandler(ICompanyService service, IMapper mapper) : base(service, mapper)
    {
    }
}