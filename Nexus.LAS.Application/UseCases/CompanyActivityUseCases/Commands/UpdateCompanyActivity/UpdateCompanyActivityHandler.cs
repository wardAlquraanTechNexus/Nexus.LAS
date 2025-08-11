using AutoMapper;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyActivityUseCases.Commands.UpdateCompanyActivity;

public class UpdateCompanyActivityHandler : UpdateBaseCommandHandler<CompaniesActivity, UpdateCompanyActivityCommand, ICompanyActivityService>
{
    public UpdateCompanyActivityHandler(ICompanyActivityService service, IMapper mapper) : base(service, mapper)
    {
    }
}