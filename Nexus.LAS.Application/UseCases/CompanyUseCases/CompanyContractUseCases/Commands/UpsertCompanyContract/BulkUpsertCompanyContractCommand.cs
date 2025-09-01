using MediatR;
using Nexus.LAS.Application.DTOs.CompanyContractDTOs;

namespace Nexus.LAS.Application.UseCases.CompanyContractUseCases;

public class BulkUpsertCompanyContractCommand: IRequest<List<CompanyContractDto>>
{
    public List<UpsertCompanyContractCommand> Commands { get; set; }
}
