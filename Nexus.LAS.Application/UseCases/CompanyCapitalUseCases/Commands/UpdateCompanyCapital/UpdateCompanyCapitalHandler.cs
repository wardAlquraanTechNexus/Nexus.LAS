// UpdateCompanyCapitalHandler.cs
using AutoMapper;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyCapitalUseCases.Commands.UpdateCompanyCapital;

public class UpdateCompanyCapitalHandler : UpdateBaseCommandHandler<CompaniesCapital, UpdateCompanyCapitalCommand, ICompanyCapitalService>
{
    public UpdateCompanyCapitalHandler(ICompanyCapitalService service, IMapper mapper) : base(service, mapper)
    {
    }
}