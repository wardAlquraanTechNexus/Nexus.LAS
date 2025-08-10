using MediatR;
using Nexus.LAS.Application.DTOs.CompanyShareHolderDTOs;

namespace Nexus.LAS.Application.UseCases.CompanyShareHolderUseCases;

public class BulkUpsertCompanyShareHolderCommand: IRequest<List<CompanyShareHolderDto>>
{
    public List<UpsertCompanyShareHolderCommand> Commands { get; set; }
}
