// CreateCompanyCapitalHandler.cs
using AutoMapper;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyCapitalUseCases.Commands.CreateCompanyCapital;

public class CreateCompanyCapitalHandler : CreateBaseCommandHandler<CompanyCapital, CreateCompanyCapitalCommand, ICompanyCapitalService>
{
    public CreateCompanyCapitalHandler(ICompanyCapitalService service, IMapper mapper) : base(service, mapper)
    {
    }
}