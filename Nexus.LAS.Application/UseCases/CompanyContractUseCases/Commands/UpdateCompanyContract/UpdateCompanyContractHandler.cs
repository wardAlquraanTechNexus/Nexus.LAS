// UpdateCompanyContractHandler.cs
using AutoMapper;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyContractUseCases.Commands.UpdateCompanyContract;

public class UpdateCompanyContractHandler : UpdateBaseCommandHandler<CompanyContract, UpdateCompanyContractCommand, ICompanyContractService>
{
    public UpdateCompanyContractHandler(ICompanyContractService service, IMapper mapper) : base(service, mapper)
    {
    }

    public override async Task<bool> Handle(UpdateCompanyContractCommand command, CancellationToken cancellationToken)
    {
        return (await _service.EditCompanyContract(command)) > 0 ;
    }
}