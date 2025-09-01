using MediatR;
using Nexus.LAS.Application.DTOs.CompanyOtherContractDTOs;

namespace Nexus.LAS.Application.UseCases.CompanyOtherContractUseCases;

public class BulkUpsertCompanyOtherContractCommand: IRequest<List<CompanyOtherContractDto>>
{
    public List<UpsertCompanyOtherContractCommand> Commands { get; set; }
}
