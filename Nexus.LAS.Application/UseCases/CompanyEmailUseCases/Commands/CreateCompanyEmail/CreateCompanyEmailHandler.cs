// CreateCompanyEmailHandler.cs
using AutoMapper;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyEmailUseCases.Commands.CreateCompanyEmail;

public class CreateCompanyEmailHandler : CreateBaseCommandHandler<CompaniesEmail, CreateCompanyEmailCommand, ICompanyEmailService>
{
    public CreateCompanyEmailHandler(ICompanyEmailService service, IMapper mapper) : base(service, mapper)
    {
    }
}