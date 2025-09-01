using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyActivityUseCases.Commands.CreateCompanyActivity;

public class CreateCompanyActivityHandler : CreateBaseCommandHandler<CompanyActivity, CreateCompanyActivityCommand, ICompanyActivityService>
{
    public CreateCompanyActivityHandler(ICompanyActivityService service, IMapper mapper) : base(service, mapper)
    {
    }
}