// UpdateCompanyShareHolderHandler.cs
using AutoMapper;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyShareHolderUseCases.Commands.UpdateCompanyShareHolder;

public class UpdateCompanyShareHolderHandler : UpdateBaseCommandHandler<CompaniesShareHolder, UpdateCompanyShareHolderCommand, ICompanyShareHolderService>
{
    public UpdateCompanyShareHolderHandler(ICompanyShareHolderService service, IMapper mapper) : base(service, mapper)
    {
    }
}