// CreateCompanyOtherContractHandler.cs
using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyOtherContractUseCases.Commands.CreateCompanyOtherContract;

public class CreateCompanyOtherContractHandler : CreateBaseCommandHandler<CompaniesOtherContract, CreateCompanyOtherContractCommand, ICompanyOtherContractService>
{
    public CreateCompanyOtherContractHandler(ICompanyOtherContractService service, IMapper mapper) : base(service, mapper)
    {
    }
}