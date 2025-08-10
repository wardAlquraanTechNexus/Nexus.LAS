using MediatR;
using Nexus.LAS.Application.DTOs.CompanyActivityDTOs;

namespace Nexus.LAS.Application.UseCases.CompanyActivityUseCases;

public class BulkUpsertCompanyActivityCommand: IRequest<List<CompanyActivityDto>>
{
    public List<UpsertCompanyActivityCommand> Commands { get; set; }
}
