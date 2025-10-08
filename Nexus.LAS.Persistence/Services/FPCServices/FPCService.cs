using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.FPCDTOs;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Domain.Entities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services.FPCServices;

public class FPCService : GenericService<FPC>, IFPCService
{
    IFPCRepo _repo;
    public FPCService(NexusLASDbContext context, IUserIdentityService userIdentityService, IFPCRepo repo)
        : base(context, userIdentityService, repo)
    {
        _repo = repo;
    }

    public async Task<PagingResult<FPCDto>> SearchFPCs(GetPagingFPCQuery query)
    {
        return await _repo.SearchFPCs(query);
    }

    public async Task<int> BulkChangeStatus(List<int> ids, CommonStatus status)
    {
        return await _repo.BulkChangeStatus(ids, status);
    }

    public async Task<int> BulkChangePrivate(List<int> ids, bool privateValue)
    {
        return await _repo.BulkChangePrivate(ids, privateValue);
    }
    public async Task<FPCDto?> GetDtoByIdAsync(int id)
    {
        return await _repo.GetDtoByIdAsync(id);
    }

}