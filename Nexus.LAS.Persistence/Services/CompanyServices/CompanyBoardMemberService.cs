using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyBoardMemberDTOs;
using Nexus.LAS.Application.UseCases.CompanyBoardMemberUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services;

public class CompanyBoardMemberService : GenericService<CompanyBoardMember> , ICompanyBoardMemberService
{
    private readonly ICompanyBoardMemberRepo _repo;
    public CompanyBoardMemberService(NexusLASDbContext context, IUserIdentityService userIdentityService, ICompanyBoardMemberRepo repo) : base(context, userIdentityService, repo)
    {
        _repo = repo;
    }

    public async Task<bool> IsPersonActiveExist(int boardId, int personId, int? excludedId = null)
    {
        return await _repo.IsPersonActiveExist(boardId, personId, excludedId);
    }
    public async Task<PagingResult<CompanyBoardMemberDto>> SearchDtoAsync(GetPagingCompanyBoardMemberQuery query)
    {
        return await _repo.SearchDtoAsync(query);
    }
}
