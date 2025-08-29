// CreateCompanyContractHandler.cs
using AutoMapper;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyContractUseCases.Commands.CreateCompanyContract;

public class CreateCompanyContractHandler : CreateBaseCommandHandler<CompanyContract, CreateCompanyContractCommand, ICompanyContractService>
{
    public CreateCompanyContractHandler(ICompanyContractService service, IMapper mapper) : base(service, mapper)
    {
    }
}