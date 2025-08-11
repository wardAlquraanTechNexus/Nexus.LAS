// UpdateCompanyEmailHandler.cs
using AutoMapper;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyEmailUseCases.Commands.UpdateCompanyEmail;

public class UpdateCompanyEmailHandler : UpdateBaseCommandHandler<CompaniesEmail, UpdateCompanyEmailCommand, ICompanyEmailService>
{
    public UpdateCompanyEmailHandler(ICompanyEmailService service, IMapper mapper) : base(service, mapper)
    {
    }
}