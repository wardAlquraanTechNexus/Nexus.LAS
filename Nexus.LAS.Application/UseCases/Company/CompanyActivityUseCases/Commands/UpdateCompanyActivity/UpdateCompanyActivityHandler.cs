using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyActivityUseCases.Commands.UpdateCompanyActivity;

public class UpdateCompanyActivityHandler : UpdateBaseCommandHandler<CompanyActivity, UpdateCompanyActivityCommand, ICompanyActivityService>
{
    public UpdateCompanyActivityHandler(ICompanyActivityService service, IMapper mapper) : base(service, mapper)
    {
    }
}