using MediatR;
using Nexus.LAS.Application.DTOs.CompanyPhoneDTOs;

namespace Nexus.LAS.Application.UseCases.CompanyPhoneUseCases;

public class BulkUpsertCompanyPhoneCommand: IRequest<List<CompanyPhoneDto>>
{
    public List<UpsertCompanyPhoneCommand> Commands { get; set; }
}
