using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.FPCDTOs;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCsODUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services.FPCServices;

public class FPCODService : GenericService<FPCOD>, IFPCODService
{
    private readonly IFPCsODRepo _repo;
    public FPCODService(NexusLASDbContext context, IUserIdentityService userIdentityService, IFPCsODRepo repo)
        : base(context, userIdentityService, repo)
    {
        _repo = repo;
    }

    public async Task<PagingResult<FPCODDto>> SearchDto(GetPagingFPCsODQuery query)
    {
        return await _repo.SearchDto(query);
    }
}