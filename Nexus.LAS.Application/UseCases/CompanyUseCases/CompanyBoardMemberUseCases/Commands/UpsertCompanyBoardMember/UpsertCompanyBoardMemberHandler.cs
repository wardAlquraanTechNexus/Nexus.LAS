using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.CompanyBoardMemberDTOs;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyBoardMemberUseCases;

public class UpsertCompanyBoardMemberHandler: IRequestHandler<BulkUpsertCompanyBoardMemberCommand, List<CompanyBoardMemberDto>>
{
    private readonly ICompanyBoardMemberService _companyBoardMemberService;
    private readonly IMapper _mapper;
    public UpsertCompanyBoardMemberHandler(ICompanyBoardMemberService companyBoardMemberService, IMapper mapper) 
    {
        _companyBoardMemberService = companyBoardMemberService;
        _mapper = mapper;   
    }
    public async Task<List<CompanyBoardMemberDto>> Handle(BulkUpsertCompanyBoardMemberCommand command , CancellationToken cancellationToken)
    {
        var companiesBoardMember = command.Commands.Select(cmd => _mapper.Map<CompanyBoardMember>(cmd)).ToList();
        var companyBoardMembersRes = await _companyBoardMemberService.BulkUpsertAsync(companiesBoardMember);
        return companyBoardMembersRes.Select(e => _mapper.Map<CompanyBoardMemberDto>(e)).ToList();

    }
}
