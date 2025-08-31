// CreateCompanyShareHolderHandler.cs
using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyShareHolderUseCases.Commands.CreateCompanyShareHolder;

public class CreateCompanyShareHolderHandler : CreateBaseCommandHandler<CompanyShareHolder, CreateCompanyShareHolderCommand, ICompanyShareHolderService>
{
    public CreateCompanyShareHolderHandler(ICompanyShareHolderService service, IMapper mapper) : base(service, mapper)
    {
    }
}