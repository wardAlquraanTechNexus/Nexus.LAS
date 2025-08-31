using MediatR;
using Nexus.LAS.Application.DTOs.CompanyCapitalDTOs;

namespace Nexus.LAS.Application.UseCases.CompanyCapitalUseCases;

public class BulkUpsertCompanyCapitalCommand: IRequest<List<CompanyCapitalDto>>
{
    public List<UpsertCompanyCapitalCommand> Commands { get; set; }
}
