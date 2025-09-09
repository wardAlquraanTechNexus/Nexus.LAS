// UpdateCompanyOtherContractHandler.cs
using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyOtherContractUseCases.Commands.UpdateCompanyOtherContract;

public class UpdateCompanyOtherContractHandler : UpdateBaseCommandHandler<CompanyOtherContract, UpdateCompanyOtherContractCommand, ICompanyOtherContractService>
{
    public UpdateCompanyOtherContractHandler(ICompanyOtherContractService service, IMapper mapper) : base(service, mapper)
    {
    }
}