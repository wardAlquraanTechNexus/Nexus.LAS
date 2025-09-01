using MediatR;
using Nexus.LAS.Application.DTOs.CompanyPersonInChargeDTOs;

namespace Nexus.LAS.Application.UseCases.CompanyPersonInChargeUseCases;

public class BulkUpsertCompanyPersonInChargeCommand: IRequest<List<CompanyPersonInChargeDto>>
{
    public List<UpsertCompanyPersonInChargeCommand> Commands { get; set; }
}
