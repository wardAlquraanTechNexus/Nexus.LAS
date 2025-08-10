using MediatR;
using Nexus.LAS.Application.DTOs.CompanyChamberOfCommerceDTOs;

namespace Nexus.LAS.Application.UseCases.CompanyChamberOfCommerceUseCases;

public class BulkUpsertCompanyChamberOfCommerceCommand: IRequest<List<CompanyChamberOfCommerceDto>>
{
    public List<UpsertCompanyChamberOfCommerceCommand> Commands { get; set; }
}
