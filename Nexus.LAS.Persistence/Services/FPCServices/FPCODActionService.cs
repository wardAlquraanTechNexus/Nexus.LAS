using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.FPCDTOs;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCsODsActionUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services.FPCServices;

public class FPCODActionService : GenericService<FPCODAction>, IFPCODActionService
{
    private readonly IFPCODActionRepo _repo;
    public FPCODActionService(NexusLASDbContext context, IUserIdentityService userIdentityService, IFPCODActionRepo repo)
        : base(context, userIdentityService, repo)
    {
        _repo = repo;
    }


    public async Task<PagingResult<FPCODActionDto>> SearhDtoAsync(GetPagingFPCsODsActionQuery query)
    {
        return await _repo.SearhDtoAsync(query);
    }
}