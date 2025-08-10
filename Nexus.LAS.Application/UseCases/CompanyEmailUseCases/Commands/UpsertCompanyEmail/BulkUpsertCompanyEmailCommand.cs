using MediatR;
using Nexus.LAS.Application.DTOs.CompanyEmailDTOs;

namespace Nexus.LAS.Application.UseCases.CompanyEmailUseCases;

public class BulkUpsertCompanyEmailCommand: IRequest<List<CompanyEmailDto>>
{
    public List<UpsertCompanyEmailCommand> Commands { get; set; }
}
