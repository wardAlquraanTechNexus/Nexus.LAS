using MediatR;
using Nexus.LAS.Application.DTOs.CompanyBoardMemberDTOs;

namespace Nexus.LAS.Application.UseCases.CompanyBoardMemberUseCases;

public class BulkUpsertCompanyBoardMemberCommand: IRequest<List<CompanyBoardMemberDto>>
{
    public List<UpsertCompanyBoardMemberCommand> Commands { get; set; }
}
